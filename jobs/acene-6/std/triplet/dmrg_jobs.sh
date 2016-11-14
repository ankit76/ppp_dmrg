#!/bin/bash

#./dmrg_ag_500 acene6_std.FCIDUMP > acene6_std_ag_dmrg.out
#echo "ag" > progress_dmrg.txt
./dmrg_b3u_500 acene6_std.FCIDUMP > acene6_std_b3u_dmrg.out
echo "b3u" >> progress_dmrg.txt
./dmrg_b2u_500 acene6_std.FCIDUMP > acene6_std_b2u_dmrg.out
echo "b2u" >> progress_dmrg.txt
./dmrg_b1g_500 acene6_std.FCIDUMP > acene6_std_b1g_dmrg.out
echo "b1g" >> progress_dmrg.txt
