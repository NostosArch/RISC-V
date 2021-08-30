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
ExecStep $xv_path/bin/xelab -wto 45803a3d38f44e0290a0387f0577952d -m64 --debug typical --relax --mt 8 --maxdelay -L xil_defaultlib -L simprims_ver -L secureip --snapshot RegisterFile_time_impl -transport_int_delays -pulse_r 0 -pulse_int_r 0 xil_defaultlib.RegisterFile xil_defaultlib.glbl -log elaborate.log
