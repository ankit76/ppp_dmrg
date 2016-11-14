#!/bin/bash

#cistar.x < acene6_scr_fci_ag.dat > acene6_scr_fci_ag.out
#rtsim.x < rtsim.dat > acene6_scr_ag_rt_fci.out
#echo "ag_fci" > progress_meld.txt
#cistar.x < acene6_scr_fci_b3u.dat > acene6_scr_fci_b3u.out
#rtsim.x < rtsim.dat > acene6_scr_b3u_rt_fci.out
#echo "b3u_fci" >> progress_meld.txt
#cistar.x < acene6_scr_fci_b2u.dat > acene6_scr_fci_b2u.out
#rtsim.x < rtsim.dat > acene6_scr_b2u_rt_fci.out
#echo "b2u_fci" >> progress_meld.txt
#cistar.x < acene6_scr_fci_b1g.dat > acene6_scr_fci_b1g.out
#rtsim.x < rtsim.dat > acene6_scr_b1g_rt_fci.out
#echo "b1g_fci" >> progress_meld.txt
#cistar.x < acene6_scr_qci_ag.dat > acene6_scr_qci_ag.out
#rtsim.x < rtsim.dat > acene6_scr_ag_rt_qci.out
#echo "ag_qci" > progress_meld.txt
cistar.x < acene6_scr_qci_b3u.dat > acene6_scr_qci_b3u.out
rtsim.x < rtsim.dat > acene6_scr_b3u_rt_qci.out
echo "b3u_qci" > progress_meld.txt
cistar.x < acene6_scr_qci_b2u.dat > acene6_scr_qci_b2u.out
rtsim.x < rtsim.dat > acene6_scr_b2u_rt_qci.out
echo "b2u_qci" >> progress_meld.txt
cistar.x < acene6_scr_qci_b1g.dat > acene6_scr_qci_b1g.out
rtsim.x < rtsim.dat > acene6_scr_b1g_rt_qci.out
echo "b1g_qci" >> progress_meld.txt
