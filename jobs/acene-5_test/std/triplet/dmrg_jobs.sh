#!/bin/bash

#./dmrg_ag_500 acene5_std.FCIDUMP > acene5_std_ag_dmrg.out
#echo "ag" > progress_dmrg.txt
./dmrg_b3u_1000 acene5_std.FCIDUMP > acene5_std_b3u_dmrg_1000.out
echo "b3u" > progress_dmrg_1000.txt
./dmrg_b2u_1000 acene5_std.FCIDUMP > acene5_std_b2u_dmrg_1000.out
echo "b2u" >> progress_dmrg_1000.txt
#./dmrg_b1g_500 acene5_std.FCIDUMP > acene5_std_b1g_dmrg.out
#echo "b1g" >> progress_dmrg.txt

