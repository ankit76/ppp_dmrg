#!/bin/bash

pre="acene2_std"
#nuc repulsion energy

econst=$(awk 'END{print}' "$pre.FCIDUMP" | awk '{print $1}')

#get arrays of energies

dmrg_100=($(grep -i 'Minimum energy encountered during all instructions' "$pre""_ag_dmrg_100.out" | awk '{printf "%3.6f\n", $9}'))
dmrg_150=($(grep -i 'Minimum energy encountered during all instructions' "$pre""_ag_dmrg_150.out" | awk '{printf "%3.6f\n", $9}'))
dmrg_200=($(grep -i 'Minimum energy encountered during all instructions' "$pre""_ag_dmrg_200.out" | awk '{printf "%3.6f\n", $9}'))
fci=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_ag_rt_fci.out"))

#write in a table

printf "\\hline\n" 
printf "  \$ {}^1A_g1 \$ & %3.6f & %3.6f & %3.6f & %3.6f \\\\\\ \n" "${dmrg_100[0]}" "${dmrg_150[0]}" "${dmrg_200[0]}"  "${fci[0]}" 
printf "  \$ {}^1A_g2 \$ & %3.6f & %3.6f & %3.6f & %3.6f \\\\\\ \n" "${dmrg_100[1]}" "${dmrg_150[1]}" "${dmrg_200[1]}"  "${fci[1]}"
printf "  \$ {}^1A_g3 \$ & %3.6f & %3.6f & %3.6f & %3.6f \\\\\\ \n" "${dmrg_100[2]}" "${dmrg_150[2]}" "${dmrg_200[2]}"  "${fci[2]}"
printf "\\hline\n" 

#repeat

dmrg_100=($(grep -i 'Minimum energy encountered during all instructions' "$pre""_b3u_dmrg_100.out" | awk '{printf "%3.6f\n", $9}'))
dmrg_150=($(grep -i 'Minimum energy encountered during all instructions' "$pre""_b3u_dmrg_150.out" | awk '{printf "%3.6f\n", $9}'))
dmrg_200=($(grep -i 'Minimum energy encountered during all instructions' "$pre""_b3u_dmrg_200.out" | awk '{printf "%3.6f\n", $9}'))
fci=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_b3u_rt_fci.out"))


printf "  \$ {}^1B_{3u}1 \$ & %3.6f & %3.6f & %3.6f & %3.6f \\\\\\ \n" "${dmrg_100[0]}" "${dmrg_150[0]}" "${dmrg_200[0]}"  "${fci[0]}" 
printf "  \$ {}^1B_{3u}2 \$ & %3.6f & %3.6f & %3.6f & %3.6f \\\\\\ \n" "${dmrg_100[1]}" "${dmrg_150[1]}" "${dmrg_200[1]}"  "${fci[1]}"
printf "  \$ {}^1B_{3u}3 \$ & %3.6f & %3.6f & %3.6f & %3.6f \\\\\\ \n" "${dmrg_100[2]}" "${dmrg_150[2]}" "${dmrg_200[2]}"  "${fci[2]}"
printf "\\hline\n" 

dmrg_100=($(grep -i 'Minimum energy encountered during all instructions' "$pre""_b2u_dmrg_100.out" | awk '{printf "%3.6f\n", $9}'))
dmrg_150=($(grep -i 'Minimum energy encountered during all instructions' "$pre""_b2u_dmrg_150.out" | awk '{printf "%3.6f\n", $9}'))
dmrg_200=($(grep -i 'Minimum energy encountered during all instructions' "$pre""_b2u_dmrg_200.out" | awk '{printf "%3.6f\n", $9}'))
fci=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_b2u_rt_fci.out"))


printf "  \$ {}^1B_{2u}1 \$ & %3.6f & %3.6f & %3.6f & %3.6f \\\\\\ \n" "${dmrg_100[0]}" "${dmrg_150[0]}" "${dmrg_200[0]}"  "${fci[0]}" 
printf "  \$ {}^1B_{2u}2 \$ & %3.6f & %3.6f & %3.6f & %3.6f \\\\\\ \n" "${dmrg_100[1]}" "${dmrg_150[1]}" "${dmrg_200[1]}"  "${fci[1]}"
printf "  \$ {}^1B_{2u}3 \$ & %3.6f & %3.6f & %3.6f & %3.6f \\\\\\ \n" "${dmrg_100[2]}" "${dmrg_150[2]}" "${dmrg_200[2]}"  "${fci[2]}"
printf "\\hline\n" 

dmrg_100=($(grep -i 'Minimum energy encountered during all instructions' "$pre""_b1g_dmrg_100.out" | awk '{printf "%3.6f\n", $9}'))
dmrg_150=($(grep -i 'Minimum energy encountered during all instructions' "$pre""_b1g_dmrg_150.out" | awk '{printf "%3.6f\n", $9}'))
dmrg_200=($(grep -i 'Minimum energy encountered during all instructions' "$pre""_b1g_dmrg_200.out" | awk '{printf "%3.6f\n", $9}'))
fci=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_b1g_rt_fci.out"))


printf "  \$ {}^1B_{1g}1 \$ & %3.6f & %3.6f & %3.6f & %3.6f \\\\\\ \n" "${dmrg_100[0]}" "${dmrg_150[0]}" "${dmrg_200[0]}"  "${fci[0]}" 
printf "  \$ {}^1B_{1g}2 \$ & %3.6f & %3.6f & %3.6f & %3.6f \\\\\\ \n" "${dmrg_100[1]}" "${dmrg_150[1]}" "${dmrg_200[1]}"  "${fci[1]}"
printf "  \$ {}^1B_{1g}3 \$ & %3.6f & %3.6f & %3.6f & %3.6f \\\\\\ \n" "${dmrg_100[2]}" "${dmrg_150[2]}" "${dmrg_200[2]}"  "${fci[2]}"
printf "\\hline\n" 


