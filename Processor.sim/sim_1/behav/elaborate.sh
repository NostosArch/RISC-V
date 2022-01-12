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
ExecStep $xv_path/bin/xelab -wto 45803a3d38f44e0290a0387f0577952d -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot RV32I_Pipelined_tb_behav xil_defaultlib.RV32I_Pipelined_tb xil_defaultlib.glbl -log elaborate.log
