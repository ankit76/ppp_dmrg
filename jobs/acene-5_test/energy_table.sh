#!/bin/bash

pre_scr="scr/singlet/acene5_scr"
econst_scr=$(awk 'END{print}' "$pre_scr.FCIDUMP" | awk '{print $1}')
pre_std="std/singlet/acene5_std"
econst_std=$(awk 'END{print}' "$pre_std.FCIDUMP" | awk '{print $1}')

#get arrays of energies

qci_scr=($(awk -v var="$econst_scr" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre_scr""_ag_rt_qci.out"))
fci_scr=($(awk -v var="$econst_scr" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre_scr""_ag_rt_fci.out"))
#fci_scr=($(awk '/State / {printf "%3.6f\n", $4}' "$pre_scr""_ag_fci_nh.out"))
dmrg_scr=($(grep -i 'Minimum energy encountered during all instructions' "$pre_scr""_ag_dmrg_1000.out" | awk '{printf "%3.6f\n", $9}'))

qci_std=($(awk -v var="$econst_std" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre_std""_ag_rt_qci.out"))
fci_std=($(awk -v var="$econst_std" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre_std""_ag_rt_fci.out"))
dmrg_std=($(grep -i 'Minimum energy encountered during all instructions' "$pre_std""_ag_dmrg_1000.out" | awk '{printf "%3.6f\n", $9}'))

#write in a table

printf "\\hline\n" 
printf "\\multirow{5}{*}{\$ Acene-5 \$} & \$ {}^1A_g1 \$ & %3.6f & %3.6f & %3.6f & %3.6f\\\\\\ \n" "${qci_scr[0]}" "${dmrg_scr[0]}" "${qci_std[0]}" "${dmrg_std[0]}" 

#repeat

qci_scr=($(awk -v var="$econst_scr" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre_scr""_b3u_rt_qci.out"))
fci_scr=($(awk -v var="$econst_scr" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre_scr""_b3u_rt_fci.out"))
#fci_scr=($(awk '/State / {printf "%3.6f\n", $4}' "$pre_scr""_b3u_fci_nh.out"))
dmrg_scr=($(grep -i 'Minimum energy encountered during all instructions' "$pre_scr""_b3u_dmrg_1000.out" | awk '{printf "%3.6f\n", $9}'))

qci_std=($(awk -v var="$econst_std" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre_std""_b3u_rt_qci.out"))
fci_std=($(awk -v var="$econst_std" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre_std""_b3u_rt_fci.out"))
dmrg_std=($(grep -i 'Minimum energy encountered during all instructions' "$pre_std""_b3u_dmrg_1000.out" | awk '{printf "%3.6f\n", $9}'))

printf " & \$ {}^1B_{3u}1 \$ & %3.6f & %3.6f & %3.6f & %3.6f\\\\\\ \n" "${qci_scr[0]}" "${dmrg_scr[0]}" "${qci_std[0]}" "${dmrg_std[0]}" 

qci_scr=($(awk -v var="$econst_scr" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre_scr""_b2u_rt_qci.out"))
fci_scr=($(awk -v var="$econst_scr" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre_scr""_b2u_rt_fci.out"))
#fci_scr=($(awk '/State / {printf "%3.6f\n", $4}' "$pre_scr""_b2u_fci_nh.out"))
dmrg_scr=($(grep -i 'Minimum energy encountered during all instructions' "$pre_scr""_b2u_dmrg_1000.out" | awk '{printf "%3.6f\n", $9}'))

qci_std=($(awk -v var="$econst_std" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre_std""_b2u_rt_qci.out"))
fci_std=($(awk -v var="$econst_std" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre_std""_b2u_rt_fci.out"))
dmrg_std=($(grep -i 'Minimum energy encountered during all instructions' "$pre_std""_b2u_dmrg_1000.out" | awk '{printf "%3.6f\n", $9}'))

printf " & \$ {}^1B_{2u}1 \$ & %3.6f & %3.6f & %3.6f & %3.6f\\\\\\ \n" "${qci_scr[0]}" "${dmrg_scr[0]}" "${qci_std[0]}" "${dmrg_std[0]}" 

pre_scr="scr/triplet/acene5_scr"
pre_std="std/triplet/acene5_std"

#get arrays of energies

qci_scr=($(awk -v var="$econst_scr" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre_scr""_b3u_rt_qci.out"))
fci_scr=($(awk -v var="$econst_scr" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre_scr""_b3u_rt_fci.out"))
dmrg_scr=($(grep -i 'Minimum energy encountered during all instructions' "$pre_scr""_b3u_dmrg_1000.out" | awk '{printf "%3.6f\n", $9}'))

qci_std=($(awk -v var="$econst_std" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre_std""_b3u_rt_qci.out"))
fci_std=($(awk -v var="$econst_std" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre_std""_b3u_rt_fci.out"))
dmrg_std=($(grep -i 'Minimum energy encountered during all instructions' "$pre_std""_b3u_dmrg_1000.out" | awk '{printf "%3.6f\n", $9}'))

printf " & \$ {}^3B_{3u}1 \$ & %3.6f & %3.6f & %3.6f & %3.6f\\\\\\ \n" "${qci_scr[0]}" "${dmrg_scr[0]}" "${qci_std[0]}" "${dmrg_std[0]}"  

qci_scr=($(awk -v var="$econst_scr" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre_scr""_b2u_rt_qci.out"))
fci_scr=($(awk -v var="$econst_scr" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre_scr""_b2u_rt_fci.out"))
dmrg_scr=($(grep -i 'Minimum energy encountered during all instructions' "$pre_scr""_b2u_dmrg_1000.out" | awk '{printf "%3.6f\n", $9}'))

qci_std=($(awk -v var="$econst_std" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre_std""_b2u_rt_qci.out"))
fci_std=($(awk -v var="$econst_std" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre_std""_b2u_rt_fci.out"))
dmrg_std=($(grep -i 'Minimum energy encountered during all instructions' "$pre_std""_b2u_dmrg_1000.out" | awk '{printf "%3.6f\n", $9}'))

printf " & \$ {}^3B_{2u}1 \$ & %3.6f & %3.6f & %3.6f & %3.6f\\\\\\ \n" "${qci_scr[0]}" "${dmrg_scr[0]}" "${qci_std[0]}" "${dmrg_std[0]}"  
printf "\\hline\n" 

