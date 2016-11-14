#!/bin/bash

./dmrg_ag_1000 acene5_std.FCIDUMP > acene5_std_ag_dmrg_1000.out
echo "ag" > progress_dmrg.txt
./dmrg_b3u_1000 acene5_std.FCIDUMP > acene5_std_b3u_dmrg_1000.out
echo "b3u" >> progress_dmrg.txt
./dmrg_b2u_1000 acene5_std.FCIDUMP > acene5_std_b2u_dmrg_1000.out
echo "b2u" >> progress_dmrg.txt
#./dmrg_b1g_1000 acene5_std.FCIDUMP > acene5_std_b1g_dmrg_1000.out
#echo "b1g" >> progress_dmrg.txt

