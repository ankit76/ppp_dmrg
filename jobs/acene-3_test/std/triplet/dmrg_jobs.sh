#!/bin/bash

./dmrg_b3u_1000 acene3_std.FCIDUMP > acene3_std_b3u_dmrg.out
./dmrg_b2u_1000 acene3_std.FCIDUMP > acene3_std_b2u_dmrg.out
./dmrg_b1g_1000 acene3_std.FCIDUMP > acene3_std_b1g_dmrg.out

