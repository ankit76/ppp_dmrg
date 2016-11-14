#!/bin/bash

pre="acene5_scr"
#nuc repulsion energy

econst=$(awk 'END{print}' "$pre.FCIDUMP" | awk '{print $1}')
fci="0"
#get arrays of energies

qci=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_ag_rt_qci.out"))
qci_gnd=${qci[0]}
awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_ag_rt_qci.out" > .temp
qci_exc=($(awk -v var="$qci_gnd" '{printf "%2.2f\n", $1-var}' .temp))
dmrg250=($(grep -i 'Minimum energy encountered during all instructions' "$pre""_ag_dmrg_250.out" | awk '{printf "%3.6f\n", $9}'))
dmrg500=($(grep -i 'Minimum energy encountered during all instructions' "$pre""_ag_dmrg_500.out" | awk '{printf "%3.6f\n", $9}'))
dmrg1000=($(grep -i 'Minimum energy encountered during all instructions' "$pre""_ag_dmrg_1000.out" | awk '{printf "%3.6f\n", $9}'))
grep -i 'Minimum energy encountered during all instructions' "$pre""_ag_dmrg_1000.out" | awk '{printf "%3.6f\n", $9}' > .temp
dmrg_gnd=${dmrg1000[0]}
dmrg_exc=($(awk -v var="$dmrg_gnd" '{printf "%2.2f\n", $1-var}' .temp))

#write in a table

printf "\\hline\n" 
printf "  \$ {}^1A_g1 \$ & %3.6f & %3.6f & %3.6f & %3.6f \\\\\\ \n" "${qci[0]}" "${dmrg250[0]}" "${dmrg500[0]}" "${dmrg1000[0]}"
printf "  \$ {}^1A_g2 \$ & %3.6f(%2.2f) & %3.6f & %3.6f & %3.6f(%2.2f) \\\\\\ \n" "${qci[1]}" "${qci_exc[1]}" "${dmrg250[1]}" "${dmrg500[1]}" "${dmrg1000[1]}" "${dmrg_exc[1]}"
printf "  \$ {}^1A_g3 \$ & %3.6f(%2.2f) & %3.6f & %3.6f & %3.6f(%2.2f) \\\\\\ \n" "${qci[2]}" "${qci_exc[2]}" "${dmrg250[2]}" "${dmrg500[2]}" "${dmrg1000[2]}" "${dmrg_exc[2]}"
printf "\\hline\n" 

#repeat
qci=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_b2u_rt_qci.out"))
awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_b2u_rt_qci.out" > .temp
qci_exc=($(awk -v var="$qci_gnd" '{printf "%2.2f\n", $1-var}' .temp))
dmrg250=($(grep -i 'Minimum energy encountered during all instructions' "$pre""_b2u_dmrg_250.out" | awk '{printf "%3.6f\n", $9}'))
dmrg500=($(grep -i 'Minimum energy encountered during all instructions' "$pre""_b2u_dmrg_500.out" | awk '{printf "%3.6f\n", $9}'))
dmrg1000=($(grep -i 'Minimum energy encountered during all instructions' "$pre""_b2u_dmrg_1000.out" | awk '{printf "%3.6f\n", $9}'))
grep -i 'Minimum energy encountered during all instructions' "$pre""_b2u_dmrg_1000.out" | awk '{printf "%3.6f\n", $9}' > .temp
dmrg_exc=($(awk -v var="$dmrg_gnd" '{printf "%2.2f\n", $1-var}' .temp))
#write in a table


printf "\\hline\n" 
printf "  \$ {}^1B_{2u}1 \$ & %3.6f(%2.2f) & %3.6f & %3.6f & %3.6f(%2.2f) \\\\\\ \n" "${qci[0]}" "${qci_exc[0]}" "${dmrg250[0]}" "${dmrg500[0]}" "${dmrg1000[0]}" "${dmrg_exc[0]}"
printf "  \$ {}^1B_{2u}2 \$ & %3.6f(%2.2f) & %3.6f & %3.6f & %3.6f(%2.2f) \\\\\\ \n" "${qci[1]}" "${qci_exc[1]}" "${dmrg250[1]}" "${dmrg500[1]}" "${dmrg1000[1]}" "${dmrg_exc[1]}"
printf "  \$ {}^1B_{2u}3 \$ & %3.6f(%2.2f) & %3.6f & %3.6f & %3.6f(%2.2f) \\\\\\ \n" "${qci[2]}" "${qci_exc[2]}" "${dmrg250[2]}" "${dmrg500[2]}" "${dmrg1000[2]}" "${dmrg_exc[2]}"
printf "\\hline\n" 


qci=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_b3u_rt_qci.out"))
awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_b3u_rt_qci.out" > .temp
qci_exc=($(awk -v var="$qci_gnd" '{printf "%2.2f\n", $1-var}' .temp))
dmrg250=($(grep -i 'Minimum energy encountered during all instructions' "$pre""_b3u_dmrg_250.out" | awk '{printf "%3.6f\n", $9}'))
dmrg500=($(grep -i 'Minimum energy encountered during all instructions' "$pre""_b3u_dmrg_500.out" | awk '{printf "%3.6f\n", $9}'))
dmrg1000=($(grep -i 'Minimum energy encountered during all instructions' "$pre""_b3u_dmrg_1000.out" | awk '{printf "%3.6f\n", $9}'))
grep -i 'Minimum energy encountered during all instructions' "$pre""_b3u_dmrg_1000.out" | awk '{printf "%3.6f\n", $9}' > .temp
dmrg_exc=($(awk -v var="$dmrg_gnd" '{printf "%2.2f\n", $1-var}' .temp))
#write in a table


printf "\\hline\n" 
printf "  \$ {}^1B_{3u}1 \$ & %3.6f(%2.2f) & %3.6f & %3.6f & %3.6f(%2.2f) \\\\\\ \n" "${qci[0]}" "${qci_exc[0]}" "${dmrg250[0]}" "${dmrg500[0]}" "${dmrg1000[0]}" "${dmrg_exc[0]}"
printf "  \$ {}^1B_{3u}2 \$ & %3.6f(%2.2f) & %3.6f & %3.6f & %3.6f(%2.2f) \\\\\\ \n" "${qci[1]}" "${qci_exc[1]}" "${dmrg250[1]}" "${dmrg500[1]}" "${dmrg1000[1]}" "${dmrg_exc[1]}"
printf "  \$ {}^1B_{3u}3 \$ & %3.6f(%2.2f) & %3.6f & %3.6f & %3.6f(%2.2f) \\\\\\ \n" "${qci[2]}" "${qci_exc[2]}" "${dmrg250[2]}" "${dmrg500[2]}" "${dmrg1000[2]}" "${dmrg_exc[2]}"
printf "\\hline\n" 

rm .temp -f
#
#qci=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_b2u_rt_qci.out"))
##fci=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_b2u_rt_fci.out"))
#dmrg=($(grep -i 'Minimum energy encountered during all instructions' "$pre""_b2u_dmrg.out" | awk '{printf "%3.6f\n", $9}'))
#
#
#printf " & \$ {}^1B_{2u}1 \$ & %3.6f & %3.6f & %3.6f \\\\\\ \n" "${qci[0]}" "${fci[0]}" "${dmrg[0]}" 
#printf " & \$ {}^1B_{2u}2 \$ & %3.6f & %3.6f & %3.6f \\\\\\ \n" "${qci[1]}" "${fci[1]}" "${dmrg[1]}" 
#printf " & \$ {}^1B_{2u}3 \$ & %3.6f & %3.6f & %3.6f \\\\\\ \n" "${qci[2]}" "${fci[2]}" "${dmrg[2]}" 
#printf "\\hline\n" 
#
#qci=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_b1g_rt_qci.out"))
##fci=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_b1g_rt_fci.out"))
#dmrg=($(grep -i 'Minimum energy encountered during all instructions' "$pre""_b1g_dmrg.out" | awk '{printf "%3.6f\n", $9}'))
#
#
#printf " & \$ {}^1B_{1g}1 \$ & %3.6f & %3.6f & %3.6f \\\\\\ \n" "${qci[0]}" "${fci[0]}" "${dmrg[0]}" 
#printf " & \$ {}^1B_{1g}2 \$ & %3.6f & %3.6f & %3.6f \\\\\\ \n" "${qci[1]}" "${fci[1]}" "${dmrg[1]}" 
#printf " & \$ {}^1B_{1g}3 \$ & %3.6f & %3.6f & %3.6f \\\\\\ \n" "${qci[2]}" "${fci[2]}" "${dmrg[2]}" 


