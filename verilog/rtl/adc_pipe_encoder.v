/*
#######################################################################################
* Title: adc_pipe_encoder
*    - A pipeline-based digital encoder.
*    - Performs accumulation of encoded values using rising and falling
*      clock edges (DDR- pipeline).
#######################################################################################
*/

module adc_pipe_encoder #(
    parameter NUM_BITS           = 3, // Total number of bits in the output
    parameter NUM_BITS_PER_STAGE = 2, // Number of bits contributed by each pipeline stage
    parameter REDUNDANCY         = 1, // Number of redundant bits between stages
    parameter BITS_ADC_STAGE     = 1  // Number of bits contributed by the final ADC stage
)(
    input wire phi1_i,  
    input wire phi2_i,                    
    input wire reset_i,                      
    input wire [(NUM_BITS_PER_STAGE * ((NUM_BITS-BITS_ADC_STAGE)/(NUM_BITS_PER_STAGE-REDUNDANCY)))-1:0] d_stage_i,      // Data from all stages 1 - N-1
    input wire [BITS_ADC_STAGE-1:0]                                                                     d_last_stage_i, // Data from the final N stage

    output wire [NUM_BITS-1:0] d_o            // adc output
);

// Calculate the number of pipeline stages (excluding the last stage)
localparam NUM_STAGES = (NUM_BITS - BITS_ADC_STAGE) / (NUM_BITS_PER_STAGE - REDUNDANCY);

// Register array to hold intermediate pipeline results
reg [NUM_BITS-1:0] pipeStage_1_sreg [0:NUM_STAGES/2];
reg [NUM_BITS-1:0] pipeStage_2_sreg [0:NUM_STAGES/2];

// Array of stage aligned and shifted values
wire [NUM_BITS-1:0] d_stage        [0:NUM_STAGES];

/*
#######################################################################################
* Generate stage shifted input values
#######################################################################################
*/

assign d_stage[NUM_STAGES] = {{NUM_BITS-BITS_ADC_STAGE{1'b0}}, d_last_stage_i};

genvar k;
generate
    for (k = 0; k < NUM_STAGES; k = k + 1) begin
        assign d_stage[k] = {{NUM_BITS-NUM_BITS_PER_STAGE{1'b0}}, d_stage_i[(k)*NUM_BITS_PER_STAGE +: NUM_BITS_PER_STAGE]} << ((NUM_STAGES-k-2) * (NUM_BITS_PER_STAGE - REDUNDANCY) + BITS_ADC_STAGE);
    end
endgenerate

/*
#######################################################################################
* Each stage adds its input to the next stages result.
* Final output is accumulated in pipeStage_sreg[0].
#######################################################################################
*/

integer i;

// Process even-numbered pipeline stages on positive clock edge of phi1
always @(posedge phi1_i) begin

    for (i = 0; i <= NUM_STAGES; i = i + 2) begin
        if(reset_i) begin
            pipeStage_1_sreg[i/2] <= 0;
        end else begin
            if(i == 0) begin
                // First stage stores its value directly
                pipeStage_1_sreg[i/2] <= d_stage[i];
            end else begin
                // Accumulate value from the previous stage and current input
                pipeStage_1_sreg[i/2] <= pipeStage_2_sreg[i/2-1] + d_stage[i];
            end
        end
	end
end

// Process odd-numbered pipeline stages on positive clock edge of phi2
always @(posedge phi2_i) begin

    for (i = 1; i <= NUM_STAGES; i = i + 2) begin
        if(reset_i) begin
            pipeStage_2_sreg[i/2] <= 0;
        end else begin
            // Accumulate value from the previous stage and current input
            pipeStage_2_sreg[i/2] <= pipeStage_1_sreg[i/2] + d_stage[i];
        end
	end
end

// Final output is the accumulated result from the last pipeline register
assign d_o = (NUM_STAGES % 2 == 0)? pipeStage_1_sreg[NUM_STAGES/2] : pipeStage_2_sreg[NUM_STAGES/2];

endmodule