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
ag_mrsd8=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_ag_rt_mrsd8.out"))
ag_mrsd9=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_ag_rt_mrsd9.out"))
ag_mrsd10=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_ag_rt_mrsd10.out"))
ag_mrsd11=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_ag_rt_mrsd11.out"))
ag_mrsd12=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_ag_rt_mrsd12.out"))
ag_mrsd13=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_ag_rt_mrsd13.out"))
ag_mrsd14=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_ag_rt_mrsd14.out"))
ag_mrsd15=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_ag_rt_mrsd15.out"))
ag_mrsd16=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_ag_rt_mrsd16.out"))
ag_mrsd17=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_ag_rt_mrsd17.out"))
ag_mrsd18=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_ag_rt_mrsd18.out"))
ag_mrsd19=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_ag_rt_mrsd19.out"))
ag_mrsd20=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_ag_rt_mrsd20.out"))

#b3u_mrsd1=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_b3u_rt_mrsd1.out"))
#b3u_mrsd2=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_b3u_rt_mrsd2.out"))
#b3u_mrsd3=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_b3u_rt_mrsd3.out"))
#b3u_mrsd4=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_b3u_rt_mrsd4.out"))
#b3u_mrsd5=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_b3u_rt_mrsd5.out"))
#b3u_mrsd6=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_b3u_rt_mrsd6.out"))
#b3u_mrsd7=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_b3u_rt_mrsd7.out"))
#
#b2u_mrsd1=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_b2u_rt_mrsd1.out"))
#b2u_mrsd2=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_b2u_rt_mrsd2.out"))
#b2u_mrsd3=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_b2u_rt_mrsd3.out"))
#b2u_mrsd4=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_b2u_rt_mrsd4.out"))
#b2u_mrsd5=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_b2u_rt_mrsd5.out"))
#b2u_mrsd6=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_b2u_rt_mrsd6.out"))
#b2u_mrsd7=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_b2u_rt_mrsd7.out"))

#write in a table

printf "%3.6f  \n" "${ag_mrsd1[0]}" 
printf "%3.6f  \n" "${ag_mrsd2[0]}" 
printf "%3.6f  \n" "${ag_mrsd3[0]}" 
printf "%3.6f  \n" "${ag_mrsd4[0]}" 
printf "%3.6f  \n" "${ag_mrsd5[0]}" 
printf "%3.6f  \n" "${ag_mrsd6[0]}" 
printf "%3.6f  \n" "${ag_mrsd7[0]}" 
printf "%3.6f  \n" "${ag_mrsd8[0]}" 
printf "%3.6f  \n" "${ag_mrsd9[0]}" 
printf "%3.6f  \n" "${ag_mrsd10[0]}" 
printf "%3.6f  \n" "${ag_mrsd11[0]}" 
printf "%3.6f  \n" "${ag_mrsd12[0]}" 
printf "%3.6f  \n" "${ag_mrsd13[0]}" 
printf "%3.6f  \n" "${ag_mrsd14[0]}" 
printf "%3.6f  \n" "${ag_mrsd15[0]}" 
printf "%3.6f  \n" "${ag_mrsd16[0]}" 
printf "%3.6f  \n" "${ag_mrsd17[0]}" 
printf "%3.6f  \n" "${ag_mrsd18[0]}" 
printf "%3.6f  \n" "${ag_mrsd19[0]}" 
printf "%3.6f  \n" "${ag_mrsd20[0]}" 

