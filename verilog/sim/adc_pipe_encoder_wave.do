onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /adc_pipe_encoder_tb/VREF
add wave -noupdate /adc_pipe_encoder_tb/TOL
add wave -noupdate /adc_pipe_encoder_tb/TH_H_STAGE_1
add wave -noupdate /adc_pipe_encoder_tb/TH_L_STAGE_1
add wave -noupdate /adc_pipe_encoder_tb/TH_H_STAGE_2
add wave -noupdate /adc_pipe_encoder_tb/TH_L_STAGE_2
add wave -noupdate /adc_pipe_encoder_tb/clock_tb
add wave -noupdate /adc_pipe_encoder_tb/reset_tb
add wave -noupdate -format Analog-Step -height 74 -max 7.0 -radix unsigned /adc_pipe_encoder_tb/d_tb
add wave -noupdate -format Analog-Step -height 74 -max 1.0 -min 0.0080000000000000002 /adc_pipe_encoder_tb/V_in
add wave -noupdate /adc_pipe_encoder_tb/V_in_sh
add wave -noupdate /adc_pipe_encoder_tb/residue
add wave -noupdate /adc_pipe_encoder_tb/residue_sh
add wave -noupdate -divider Encoder
add wave -noupdate /adc_pipe_encoder_tb/encoder/encoder/NUM_BITS
add wave -noupdate /adc_pipe_encoder_tb/encoder/encoder/NUM_BITS_PER_STAGE
add wave -noupdate /adc_pipe_encoder_tb/encoder/encoder/REDUNDANCY
add wave -noupdate /adc_pipe_encoder_tb/encoder/encoder/BITS_ADC_STAGE
add wave -noupdate /adc_pipe_encoder_tb/encoder/encoder/NUM_STAGES
add wave -noupdate /adc_pipe_encoder_tb/encoder/encoder/clock_i
add wave -noupdate /adc_pipe_encoder_tb/encoder/encoder/reset_i
add wave -noupdate /adc_pipe_encoder_tb/encoder/encoder/d_stage_i
add wave -noupdate /adc_pipe_encoder_tb/encoder/encoder/d_last_stage_i
add wave -noupdate /adc_pipe_encoder_tb/encoder/encoder/d_o
add wave -noupdate /adc_pipe_encoder_tb/encoder/encoder/pipeStage_sreg
add wave -noupdate /adc_pipe_encoder_tb/encoder/encoder/d_stage
add wave -noupdate -divider {Stage 1}
add wave -noupdate /adc_pipe_encoder_tb/encoder/o2b_stage_1/WIDTH
add wave -noupdate /adc_pipe_encoder_tb/encoder/o2b_stage_1/onehot_i
add wave -noupdate /adc_pipe_encoder_tb/encoder/o2b_stage_1/binary_o
add wave -noupdate /adc_pipe_encoder_tb/encoder/o2b_stage_1/binary
add wave -noupdate /adc_pipe_encoder_tb/encoder/o2b_stage_1/i
add wave -noupdate -divider {Stage 2}
add wave -noupdate /adc_pipe_encoder_tb/encoder/o2b_stage_2/WIDTH
add wave -noupdate /adc_pipe_encoder_tb/encoder/o2b_stage_2/onehot_i
add wave -noupdate /adc_pipe_encoder_tb/encoder/o2b_stage_2/binary_o
add wave -noupdate /adc_pipe_encoder_tb/encoder/o2b_stage_2/binary
add wave -noupdate /adc_pipe_encoder_tb/encoder/o2b_stage_2/i
add wave -noupdate -divider {Stage 3}
add wave -noupdate /adc_pipe_encoder_tb/encoder/o2b_stage_3/WIDTH
add wave -noupdate /adc_pipe_encoder_tb/encoder/o2b_stage_3/onehot_i
add wave -noupdate /adc_pipe_encoder_tb/encoder/o2b_stage_3/binary_o
add wave -noupdate /adc_pipe_encoder_tb/encoder/o2b_stage_3/binary
add wave -noupdate /adc_pipe_encoder_tb/encoder/o2b_stage_3/i
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {6015000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 355
configure wave -valuecolwidth 133
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits us
update
WaveRestoreZoom {0 ps} {10500 ns}
