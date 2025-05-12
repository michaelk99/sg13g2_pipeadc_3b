/*
#######################################################################################
* Title: Testbench of the Pipelined ADC Encoder (1.5-bit architecture)
*    - A behavioral testbench to simulate the full ADC pipeline.
#######################################################################################
*/

`timescale 1ns/1ps

module adc_pipe_encoder_tb();

    // ADC reference voltage and comparator thresholds
    localparam real VREF = 0.5; 
    localparam real TOL = 0.01;
    localparam real TH_H_STAGE_1 = 0.7 * 2 * VREF;
    localparam real TH_L_STAGE_1 = 0.3 * 2 * VREF;
    localparam real TH_H_STAGE_2 = 0.7 * 2 * VREF;
    localparam real TH_L_STAGE_2 = 0.3 * 2 * VREF;
    localparam real TH_H_STAGE_3 = 0.7 * 2 * VREF;
    localparam real TH_L_STAGE_3 = 0.3 * 2 * VREF;

    reg clock_tb;
    reg reset_tb;
    wire [2:0] d1_tb;
    wire [2:0] d2_tb;
    wire [2:0] d3_tb;

    // Outputs
    wire [2:0] d_tb;

    real V_in; 
    real V_in_sh;
    real residue [0:1];
    real residue_sh [0:1];

    // Stage 1:
    assign d1_tb = comp(V_in_sh, TH_H_STAGE_1, TH_L_STAGE_1);
    assign residue[0] = mdac_2b(V_in_sh, VREF, d1_tb);

    // Stage 2:
    assign d2_tb = comp(residue_sh[0], TH_H_STAGE_2, TH_L_STAGE_2);
    assign residue[1] = mdac_2b(residue_sh[0], VREF, d2_tb);

    // Final stage:
    assign d3_tb = comp(residue_sh[1], TH_H_STAGE_3, TH_L_STAGE_3);

    // DUT: Pipelined ADC encoder instance
    adc_pipe_encoder_TOP #() encoder (
        .clock_i(clock_tb),
        .reset_i(reset_tb),
        .d1_i(d1_tb),
        .d2_i(d2_tb),
        .d3_i(d3_tb),
        .d_o(d_tb)
    );

    // Clock generation (10 ns period)
    initial begin
        clock_tb = 0;
        forever #5 clock_tb = ~clock_tb;
    end

    // // Sample analog values at both edges (mimics sample-and-hold)
    // always @(posedge clock_tb, negedge clock_tb) begin
    //     V_in_sh = V_in;
    //     residue_sh[0] = residue[0];
    //     residue_sh[1] = residue[1];
    // end

    // Sample analog values at both edges (mimics sample-and-hold)
    always @(posedge clock_tb) begin
        V_in_sh = V_in;
        residue_sh[0] = residue[0];
        residue_sh[1] = residue[1];
    end

    // Input stimulus: Sweep V_in from 0.0 to 1.0
    initial begin
        // reset
        reset_tb = 1;
        V_in = 0.0;
        #12;
        reset_tb = 0;
        #3;

        // loop -> increase V_in from 0 to 1
        for (V_in = 0.0; V_in <= 1.0; V_in = V_in + 0.001) begin
            #10;
            $display("Time = %0t | V_in = %0f", $time, V_in);
        end
        #10;

        $stop;
    end

    // 1-bit comparator function (returns 1 if x_i > TH)
    function [2:0]comp;
        input real x_i;
        input real TH_H;
        input real TH_L;
        begin
            if (x_i >= TH_H) begin
                comp = 3'b100;
            end else if (x_i < TH_H && x_i >= TH_L) begin
                comp = 3'b010;
            end else begin
                comp = 3'b001;
            end
        end
    endfunction

    // 2-bit MDAC function (computes stage residue based on control code)
    function real mdac_2b;
        input real V_i;
        input real Vref_i;
        input [2:0] ctrl_i;

        begin
            case (ctrl_i)
                3'b100:   mdac_2b = 2.0 * V_i - 2.0 * Vref_i;  // –Vref
                3'b010:   mdac_2b = 2.0 * V_i - Vref_i;        // -Vref/2
                3'b001:   mdac_2b = 2.0 * V_i;                 // +0
                default: mdac_2b = 0.0;
            endcase
        end
    endfunction
endmodule


    
   