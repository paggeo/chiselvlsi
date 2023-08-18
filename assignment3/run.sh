#!/bin/bash
iverilog -g2012 -o run fir_tb.sv dut.v && vvp run