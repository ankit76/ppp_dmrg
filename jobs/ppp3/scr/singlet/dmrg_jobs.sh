#!/bin/bash

./dmrg_ag_500 ppp3_scr.FCIDUMP  > ppp3_scr_ag_dmrg.out
echo "ag" > progress.txt
./dmrg_b3u_500 ppp3_scr.FCIDUMP > ppp3_scr_b3u_dmrg.out
echo "b3u" >> progress.txt
./dmrg_b2u_500 ppp3_scr.FCIDUMP > ppp3_scr_b2u_dmrg.out
echo "b2u" >> progress.txt
./dmrg_b1g_500 ppp3_scr.FCIDUMP > ppp3_scr_b1g_dmrg.out
echo "b1g" >> progress.txt

