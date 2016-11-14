#!/bin/bash

pre="acene5"
#nuc repulsion energy

#econst=$(awk 'END{print}' "$pre.FCIDUMP" | awk '{print $1}')
econst=0
#get arrays of energies

ag_mrsd1=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_mrsd1_rt_ag.out"))
ag_mrsd2=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_mrsd2_rt_ag.out"))
ag_mrsd3=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_mrsd3_rt_ag.out"))
ag_mrsd4=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_mrsd4_rt_ag.out"))
ag_mrsd5=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_mrsd5_rt_ag.out"))
ag_mrsd6=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_mrsd6_rt_ag.out"))
ag_mrsd7=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_mrsd7_rt_ag.out"))
ag_mrsd8=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_mrsd8_rt_ag.out"))
ag_mrsd9=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_mrsd9_rt_ag.out"))
ag_mrsd10=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_mrsd10_rt_ag.out"))
ag_mrsd11=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_mrsd11_rt_ag.out"))
ag_mrsd12=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_mrsd12_rt_ag.out"))
ag_mrsd13=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_mrsd13_rt_ag.out"))


#write in a table

printf "%3.6f  %3.6f  %3.6f\n" "${ag_mrsd1[0]}" 
printf "%3.6f  %3.6f  %3.6f\n" "${ag_mrsd2[0]}" 
printf "%3.6f  %3.6f  %3.6f\n" "${ag_mrsd3[0]}" 
printf "%3.6f  %3.6f  %3.6f\n" "${ag_mrsd4[0]}" 
printf "%3.6f  %3.6f  %3.6f\n" "${ag_mrsd5[0]}" 
printf "%3.6f  %3.6f  %3.6f\n" "${ag_mrsd6[0]}" 
printf "%3.6f  %3.6f  %3.6f\n" "${ag_mrsd7[0]}" 
printf "%3.6f  %3.6f  %3.6f\n" "${ag_mrsd8[0]}" 
printf "%3.6f  %3.6f  %3.6f\n" "${ag_mrsd9[0]}" 
printf "%3.6f  %3.6f  %3.6f\n" "${ag_mrsd10[0]}" 
printf "%3.6f  %3.6f  %3.6f\n" "${ag_mrsd11[0]}" 
printf "%3.6f  %3.6f  %3.6f\n" "${ag_mrsd12[0]}" 

