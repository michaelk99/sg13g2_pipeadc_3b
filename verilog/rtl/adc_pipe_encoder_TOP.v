/*
#######################################################################################
* Title: Pipelined ADC Encoder (1.5-bit architecture)
*   - This module implements the pipelined ADC encoding using a 1.5-bit architecture 
*     and digital error correction.
#######################################################################################
*/

`include "onehot2bin.v"
`include "adc_pipe_encoder.v"

module adc_pipe_encoder_TOP(
    input wire clock_i,                      
    input wire reset_i,
    input wire [2:0] d1_i, // data stage 1
    input wire [2:0] d2_i, // data stage 2
    input wire [2:0] d3_i, // data stage 3                                            

    output wire [2:0] d_o  // adc output
);

    // Encoder configuration
    parameter NUM_BITS           = 3;
    parameter NUM_BITS_PER_STAGE = 2;
    parameter REDUNDANCY         = 1;
    parameter BITS_ADC_STAGE     = 1;
    parameter ONEHOT_WIDTH       = 3;

    wire [NUM_BITS*NUM_BITS_PER_STAGE-1:0] binary;

    // OneHot to binary
    onehot2bin #( .WIDTH(ONEHOT_WIDTH)) o2b_stage_1 (
        .onehot_i(d1_i),
        .binary_o(binary[2 * NUM_BITS_PER_STAGE +: NUM_BITS_PER_STAGE])
    );

    onehot2bin #( .WIDTH(ONEHOT_WIDTH)) o2b_stage_2 (
        .onehot_i(d2_i),
        .binary_o(binary[1 * NUM_BITS_PER_STAGE +: NUM_BITS_PER_STAGE])
    );

    onehot2bin #( .WIDTH(ONEHOT_WIDTH)) o2b_stage_3 (
        .onehot_i(d3_i),
        .binary_o(binary[0 * NUM_BITS_PER_STAGE +: NUM_BITS_PER_STAGE])
    );

    // Pipelined ADC encoder
    adc_pipe_encoder #(
        .NUM_BITS(NUM_BITS),
        .NUM_BITS_PER_STAGE(NUM_BITS_PER_STAGE),
        .REDUNDANCY(REDUNDANCY),
        .BITS_ADC_STAGE(BITS_ADC_STAGE)
    ) encoder (
        .clock_i(clock_i),
        .reset_i(reset_i),
        .d_stage_i(binary[NUM_BITS*NUM_BITS_PER_STAGE-1:NUM_BITS_PER_STAGE]),
        .d_last_stage_i(binary[NUM_BITS_PER_STAGE-1]),
        .d_o(d_o)
    );

    
endmodule


    
   