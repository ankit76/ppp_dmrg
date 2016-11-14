#!/bin/bash

cistar.x < acene2_std_fci_ag.dat > acene2_std_fci_ag.out
rtsim.x < rtsim.dat > acene2_std_ag_rt_fci.out
echo "ag_fci" > progress.txt
cistar.x < acene2_std_fci_b3u.dat > acene2_std_fci_b3u.out
rtsim.x < rtsim.dat > acene2_std_b3u_rt_fci.out
echo "b3u_fci" >> progress.txt
cistar.x < acene2_std_fci_b2u.dat > acene2_std_fci_b2u.out
rtsim.x < rtsim.dat > acene2_std_b2u_rt_fci.out
echo "b2u_fci" >> progress.txt
cistar.x < acene2_std_fci_b1g.dat > acene2_std_fci_b1g.out
rtsim.x < rtsim.dat > acene2_std_b1g_rt_fci.out
echo "b1g_fci" >> progress.txt
