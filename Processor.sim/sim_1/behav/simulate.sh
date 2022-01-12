#!/bin/bash -f
xv_path="/opt/Xilinx/Vivado/2015.4"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xsim RV32I_Pipelined_tb_behav -key {Behavioral:sim_1:Functional:RV32I_Pipelined_tb} -tclbatch RV32I_Pipelined_tb.tcl -view /home/abhishek/Verilog/Processor/RV32I_CPU_tb_behav.wcfg -log simulate.log
