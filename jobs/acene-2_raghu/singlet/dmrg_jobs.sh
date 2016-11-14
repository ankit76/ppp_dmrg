#!/bin/bash

./dmrg_ag_200 acene2_std.FCIDUMP  >  acene2_std_ag_dmrg_200.out
./dmrg_b3u_200 acene2_std.FCIDUMP > acene2_std_b3u_dmrg_200.out
./dmrg_b2u_200 acene2_std.FCIDUMP > acene2_std_b2u_dmrg_200.out
./dmrg_b1g_200 acene2_std.FCIDUMP > acene2_std_b1g_dmrg_200.out

