#!/bin/bash

pre="tpa4_std"
#nuc repulsion energy

econst=$(awk 'END{print}' "$pre.FCIDUMP" | awk '{print $1}')

#get arrays of energies

qci=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_bu_rt_qci.out"))
fci=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_bu_rt_fci.out"))
#fci=($(awk '/State / {printf "%3.6f\n", $4}' "$pre""_bu_fci_nh.out"))
dmrg=($(grep -i 'Minimum energy encountered during all instructions' "$pre""_bu_dmrg.out" | awk '{printf "%3.6f\n", $9}'))


printf " & \$ {}^3B_u1 \$ & %3.6f & %3.6f & %3.6f \\\\\\ \n" "${qci[0]}" "${fci[0]}" "${dmrg[0]}" 
#printf " & \$ {}^3B_u2 \$ & %3.6f & %3.6f & %3.6f \\\\\\ \n" "${qci[1]}" "${fci[1]}" "${dmrg[1]}" 
#printf " & \$ {}^3B_u3 \$ & %3.6f & %3.6f & %3.6f \\\\\\ \n" "${qci[2]}" "${fci[2]}" "${dmrg[2]}" 
printf "\\cline{2-5}\n" 



