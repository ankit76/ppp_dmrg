#!/bin/bash

#cistar.x < ppp3_std_fci_ag.dat > ppp3_std_fci_ag.out
#rtsim.x < rtsim.dat > ppp3_std_ag_rt_fci.out
#echo "ag_fci" > progress.txt
#cistar.x < ppp3_std_fci_b3u.dat > ppp3_std_fci_b3u.out
#rtsim.x < rtsim.dat > ppp3_std_b3u_rt_fci.out
#echo "b3u_fci" >> progress.txt
#cistar.x < ppp3_std_fci_b2u.dat > ppp3_std_fci_b2u.out
#rtsim.x < rtsim.dat > ppp3_std_b2u_rt_fci.out
#echo "b2u_fci" >> progress.txt
#cistar.x < ppp3_std_fci_b1g.dat > ppp3_std_fci_b1g.out
#rtsim.x < rtsim.dat > ppp3_std_b1g_rt_fci.out
#echo "b1g_fci" >> progress.txt
cistar.x < ppp3_std_qci_ag.dat > ppp3_std_qci_ag.out
rtsim.x < rtsim.dat > ppp3_std_ag_rt_qci.out
echo "ag_qci" > progress_ci.txt
cistar.x < ppp3_std_qci_b3u.dat > ppp3_std_qci_b3u.out
rtsim.x < rtsim.dat > ppp3_std_b3u_rt_qci.out
echo "b3u_qci" >> progress_ci.txt
cistar.x < ppp3_std_qci_b2u.dat > ppp3_std_qci_b2u.out
rtsim.x < rtsim.dat > ppp3_std_b2u_rt_qci.out
echo "b2u_qci" >> progress_ci.txt
cistar.x < ppp3_std_qci_b1g.dat > ppp3_std_qci_b1g.out
rtsim.x < rtsim.dat > ppp3_std_b1g_rt_qci.out
echo "b1g_qci" >> progress_ci.txt
