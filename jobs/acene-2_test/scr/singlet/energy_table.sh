#!/bin/bash

pre="acene2_scr"
#nuc repulsion energy

econst=$(awk 'END{print}' "$pre.FCIDUMP" | awk '{print $1}')

#get arrays of energies

qci=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_ag_rt_qci.out"))
fci=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_ag_rt_fci.out"))
fci=($(awk '/State / {printf "%3.6f\n", $4}' "$pre""_ag_fci_nh.out"))
dmrg=($(grep -i 'Minimum energy encountered during all instructions' "$pre""_ag_dmrg.out" | awk '{printf "%3.6f\n", $9}'))

#write in a table

printf "\\hline\n" 
printf "\\multirow{12}{*}{\$ $pre \$} & \$ {}^1A_g1 \$ & %3.6f & %3.6f & %3.6f \\\\\\ \n" "${qci[0]}" "${fci[0]}" "${dmrg[0]}" 
#printf " & \$ {}^1A_g2 \$ & %3.6f & %3.6f & %3.6f \\\\\\ \n" "${qci[1]}" "${fci[1]}" "${dmrg[1]}" 
#printf " & \$ {}^1A_g3 \$ & %3.6f & %3.6f & %3.6f \\\\\\ \n" "${qci[2]}" "${fci[2]}" "${dmrg[2]}" 
#printf "\\cline{2-5}\n" 

#repeat

qci=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_b3u_rt_qci.out"))
fci=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_b3u_rt_fci.out"))
fci=($(awk '/State / {printf "%3.6f\n", $4}' "$pre""_b3u_fci_nh.out"))
dmrg=($(grep -i 'Minimum energy encountered during all instructions' "$pre""_b3u_dmrg.out" | awk '{printf "%3.6f\n", $9}'))


printf " & \$ {}^1B_{3u}1 \$ & %3.6f & %3.6f & %3.6f \\\\\\ \n" "${qci[0]}" "${fci[0]}" "${dmrg[0]}" 
#printf " & \$ {}^1B_{3u}2 \$ & %3.6f & %3.6f & %3.6f \\\\\\ \n" "${qci[1]}" "${fci[1]}" "${dmrg[1]}" 
#printf " & \$ {}^1B_{3u}3 \$ & %3.6f & %3.6f & %3.6f \\\\\\ \n" "${qci[2]}" "${fci[2]}" "${dmrg[2]}" 
#printf "\\cline{2-5}\n" 

qci=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_b2u_rt_qci.out"))
fci=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_b2u_rt_fci.out"))
fci=($(awk '/State / {printf "%3.6f\n", $4}' "$pre""_b2u_fci_nh.out"))
dmrg=($(grep -i 'Minimum energy encountered during all instructions' "$pre""_b2u_dmrg.out" | awk '{printf "%3.6f\n", $9}'))


printf " & \$ {}^1B_{2u}1 \$ & %3.6f & %3.6f & %3.6f \\\\\\ \n" "${qci[0]}" "${fci[0]}" "${dmrg[0]}" 
#printf " & \$ {}^1B_{2u}2 \$ & %3.6f & %3.6f & %3.6f \\\\\\ \n" "${qci[1]}" "${fci[1]}" "${dmrg[1]}" 
#printf " & \$ {}^1B_{2u}3 \$ & %3.6f & %3.6f & %3.6f \\\\\\ \n" "${qci[2]}" "${fci[2]}" "${dmrg[2]}" 
#printf "\\cline{2-5}\n" 

qci=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_b1g_rt_qci.out"))
fci=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_b1g_rt_fci.out"))2fci=($(awk '/State / {printf "%3.6f\n", $4}' "$pre""_b1g_fci_nh.out"))
dmrg=($(grep -i 'Minimum energy encountered during all instructions' "$pre""_b1g_dmrg.out" | awk '{printf "%3.6f\n", $9}'))


#printf " & \$ {}^1B_{1g}1 \$ & %3.6f & %3.6f & %3.6f \\\\\\ \n" "${qci[0]}" "${fci[0]}" "${dmrg[0]}" 
#printf " & \$ {}^1B_{1g}2 \$ & %3.6f & %3.6f & %3.6f \\\\\\ \n" "${qci[1]}" "${fci[1]}" "${dmrg[1]}" 
#printf " & \$ {}^1B_{1g}3 \$ & %3.6f & %3.6f & %3.6f \\\\\\ \n" "${qci[2]}" "${fci[2]}" "${dmrg[2]}" 

