all:
	iverilog -o dataPath_tb.vvp dataPath_tb.v
run:
	vvp dataPath_tb.vvp 