#!/bin/bash

pre="acene5_scr"
#nuc repulsion energy

econst=$(awk 'END{print}' "$pre.FCIDUMP" | awk '{print $1}')
#get arrays of energies

ag_mrsd1=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_ag_rt_mrsd1.out"))
ag_mrsd2=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_ag_rt_mrsd2.out"))
ag_mrsd3=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_ag_rt_mrsd3.out"))
ag_mrsd4=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_ag_rt_mrsd4.out"))
ag_mrsd5=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_ag_rt_mrsd5.out"))
ag_mrsd6=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_ag_rt_mrsd6.out"))
ag_mrsd7=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_ag_rt_mrsd7.out"))

b3u_mrsd1=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_b3u_rt_mrsd1.out"))
b3u_mrsd2=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_b3u_rt_mrsd2.out"))
b3u_mrsd3=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_b3u_rt_mrsd3.out"))
b3u_mrsd4=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_b3u_rt_mrsd4.out"))
b3u_mrsd5=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_b3u_rt_mrsd5.out"))
b3u_mrsd6=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_b3u_rt_mrsd6.out"))
b3u_mrsd7=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_b3u_rt_mrsd7.out"))

b2u_mrsd1=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_b2u_rt_mrsd1.out"))
b2u_mrsd2=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_b2u_rt_mrsd2.out"))
b2u_mrsd3=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_b2u_rt_mrsd3.out"))
b2u_mrsd4=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_b2u_rt_mrsd4.out"))
b2u_mrsd5=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_b2u_rt_mrsd5.out"))
b2u_mrsd6=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_b2u_rt_mrsd6.out"))
b2u_mrsd7=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_b2u_rt_mrsd7.out"))

#write in a table

printf "%3.6f  %3.6f  %3.6f\n" "${ag_mrsd1[0]}" "${b3u_mrsd1[0]}"  "${b2u_mrsd1[0]}"
printf "%3.6f  %3.6f  %3.6f\n" "${ag_mrsd2[0]}" "${b3u_mrsd2[0]}"  "${b2u_mrsd2[0]}"
printf "%3.6f  %3.6f  %3.6f\n" "${ag_mrsd3[0]}" "${b3u_mrsd3[0]}"  "${b2u_mrsd3[0]}"
printf "%3.6f  %3.6f  %3.6f\n" "${ag_mrsd4[0]}" "${b3u_mrsd4[0]}"  "${b2u_mrsd4[0]}"
printf "%3.6f  %3.6f  %3.6f\n" "${ag_mrsd5[0]}" "${b3u_mrsd5[0]}"  "${b2u_mrsd5[0]}"
printf "%3.6f  %3.6f  %3.6f\n" "${ag_mrsd6[0]}" "${b3u_mrsd6[0]}"  "${b2u_mrsd6[0]}"
printf "%3.6f  %3.6f  %3.6f\n" "${ag_mrsd7[0]}" "${b3u_mrsd7[0]}"  "${b2u_mrsd7[0]}"

