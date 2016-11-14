#!/bin/bash

pre="acene5_scr"
#nuc repulsion energy

econst=$(awk 'END{print}' "$pre.FCIDUMP" | awk '{print $1}')
#get arrays of energies

ag_dmrg=($(grep -i 'Minimum energy encountered during all instructions' "$pre""_ag_dmrg.out" | awk '{gnd=$9; getline; fst=$9; printf "%3.6f\n", fst-gnd; stop}'))
ag_mrsd6=($(awk '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5}' "$pre""_ag_rt_mrsd6.out" | awk '{gnd=$1; getline; fst=$1; printf "%3.6f\n", fst-gnd; stop}' ))
b3u_dmrg=($(grep -i 'Minimum energy encountered during all instructions' "$pre""_b3u_dmrg.out" | awk '{gnd=$9; getline; fst=$9; printf "%3.6f\n", fst-gnd; stop}'))
b3u_mrsd6=($(awk '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5}' "$pre""_b3u_rt_mrsd6.out" | awk '{gnd=$1; getline; fst=$1; printf "%3.6f\n", fst-gnd; stop}' ))
b2u_dmrg=($(grep -i 'Minimum energy encountered during all instructions' "$pre""_b2u_dmrg.out" | awk '{gnd=$9; getline; fst=$9; printf "%3.6f\n", fst-gnd; stop}'))
b2u_mrsd5=($(awk '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5}' "$pre""_b2u_rt_mrsd5.out" | awk '{gnd=$1; getline; fst=$1; printf "%3.6f\n", fst-gnd; stop}' ))

#write in a table
printf "%3.6f  %3.6f  %3.6f\n" "$ag_dmrg" "$b3u_dmrg" "$b2u_dmrg"
printf "%3.6f  %3.6f  %3.6f\n" "$ag_mrsd6" "$b3u_mrsd6" "$b2u_mrsd5"

