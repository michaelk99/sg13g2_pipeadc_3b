vlib work
vmap work work

vlog -work work ../rtl/adc_pipe_encoder.v
vlog -work work ../rtl/onehot2bin.v
vlog -work work ../rtl/adc_pipe_encoder_TOP.v
vlog -work work adc_pipe_encoder_tb.v

vsim -t 1ps work.adc_pipe_encoder_tb 

do adc_pipe_encoder_wave.do
run 100 us