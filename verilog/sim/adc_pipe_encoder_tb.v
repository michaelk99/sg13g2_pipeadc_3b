/*
#######################################################################################
* Title: Testbench of the Pipelined ADC Encoder (1.5-bit architecture)
*    - A behavioral testbench to simulate the full ADC pipeline.
#######################################################################################
*/

`timescale 1ns/1ps

module adc_pipe_encoder_tb();

    // ADC reference voltage and comparator thresholds
    localparam real VREF = 0.75; 
    localparam real TOL = 0.01;
    localparam real TH_H_STAGE_1 = 1.125;
    localparam real TH_L_STAGE_1 = 0.375;
    localparam real TH_H_STAGE_2 = 1.125;
    localparam real TH_L_STAGE_2 = 0.375;
    localparam real TH_H_STAGE_3 = 0.75;
    localparam real TH_L_STAGE_3 = 0.75;

    reg phi1_tb, phi2_tb;
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

    integer i;

    // Signal Parameter
    real t;                   
    real Tstep = 100e-9;

    real freq = 100e3;        // 100 kHz
    real offset = VREF;       
    real amplitude = 0.5;     // 1V Vpp
    real pi = 3.141592653589;
    real vin;                 // sine wave output

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
        .phi1_i(phi1_tb),
        .phi2_i(phi2_tb),
        .reset_i(reset_tb),
        .d1_i(d1_tb),
        .d2_i(d2_tb),
        .d3_i(d3_tb[2]),
        .d_o(d_tb)
    );

    // Non-Overlapping Clock generation (500 ns period => 2 MHz sample rate)
    initial begin
        phi1_tb = 0;
        forever begin
            #25   phi1_tb = 1;
            #200  phi1_tb = 0;
            #275;             
        end
    end

    initial begin
        phi2_tb = 0;
        forever begin
            #275  phi2_tb = 1;
            #200  phi2_tb = 0; 
            #25;             
        end
    end

    // Sample analog values at rising edge of phi1 (mimics sample-and-hold)
    always @(posedge phi1_tb) begin
        V_in_sh = V_in;
        residue_sh[1] = residue[1];
    end

    // Sample analog values at rising edge of phi2 (mimics sample-and-hold)
    always @(posedge phi2_tb) begin
        residue_sh[0] = residue[0];
    end

    // Input stimulus: Sweep V_in from 0.0 to 1.0
    initial begin
        // reset
        reset_tb = 1;
        V_in = 0.0;
        #50;
        reset_tb = 0;

        $display("Time (us)\tVin (V)");
        for (i = 0; i < 400; i = i + 1) begin
            t = i * Tstep;
            V_in = offset + amplitude * $sin(2.0 * pi * freq * t);
            $display("%0.3f\t\t%0.4f", t * 1e6, vin);
            #100;  // 100 ns pause
        end
        #10;

        $stop;
    end

    // comparator function (returns one-hot)
    function [2:0]comp;
        input real x_i;
        input real TH_H;
        input real TH_L;
        begin
            if (x_i >= TH_H) begin
                comp = 3'b100;
            end else if (x_i < TH_H && x_i >= TH_L) begin
                comp = 3'b001;
            end else begin
                comp = 3'b010;
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
                3'b001:   mdac_2b = 2.0 * V_i - Vref_i;        // -Vref/2
                3'b010:   mdac_2b = 2.0 * V_i;                 // -0
                default: mdac_2b = 0.0;
            endcase
        end
    endfunction
endmodule


    
   