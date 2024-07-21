# compile

vlog EX_12.v
vlog EX_12_tb.v

# simulate
vsim -debugdb testbench

#probe signals
add wave -noupdate -format -logic              /testbench/EX12_instance/reset
add wave -noupdate -format -logic              /testbench/EX12_instance/clk
add wave -noupdate -format -literal -radix bin /testbench/EX12_instance/sel
add wave -noupdate -format -literal -radix hex /testbench/EX12_instance/a
add wave -noupdate -format -literal -radix hex /testbench/EX12_instance/b
add wave -noupdate -format -literal -radix hex /testbench/EX12_instance/g

# 180 ns
run 180
