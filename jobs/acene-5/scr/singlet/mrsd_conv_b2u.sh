#!/bin/bash

pre="acene5_scr"
#nuc repulsion energy

econst=$(awk 'END{print}' "$pre.FCIDUMP" | awk '{print $1}')
#get arrays of energies

b2u_mrsd1=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_b2u_rt_mrsd1.out"))
b2u_mrsd2=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_b2u_rt_mrsd2.out"))
b2u_mrsd3=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_b2u_rt_mrsd3.out"))
b2u_mrsd4=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_b2u_rt_mrsd4.out"))
b2u_mrsd5=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_b2u_rt_mrsd5.out"))
b2u_mrsd6=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_b2u_rt_mrsd6.out"))
b2u_mrsd7=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_b2u_rt_mrsd7.out"))
b2u_mrsd8=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_b2u_rt_mrsd8.out"))
b2u_mrsd9=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_b2u_rt_mrsd9.out"))
b2u_mrsd10=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_b2u_rt_mrsd10.out"))
b2u_mrsd11=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_b2u_rt_mrsd11.out"))
b2u_mrsd12=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_b2u_rt_mrsd12.out"))
b2u_mrsd13=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_b2u_rt_mrsd13.out"))
b2u_mrsd14=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_b2u_rt_mrsd14.out"))
b2u_mrsd15=($(awk -v var="$econst" '/TOTAL CI ENERGY/  {printf "%3.6f\n", $5+var}' "$pre""_b2u_rt_mrsd15.out"))


#write in a table

printf "%3.6f  \n" "${b2u_mrsd1[0]}" 
printf "%3.6f  \n" "${b2u_mrsd2[0]}" 
printf "%3.6f  \n" "${b2u_mrsd3[0]}" 
printf "%3.6f  \n" "${b2u_mrsd4[0]}" 
printf "%3.6f  \n" "${b2u_mrsd5[0]}" 
printf "%3.6f  \n" "${b2u_mrsd6[0]}" 
printf "%3.6f  \n" "${b2u_mrsd7[0]}" 
printf "%3.6f  \n" "${b2u_mrsd8[0]}" 
printf "%3.6f  \n" "${b2u_mrsd9[0]}" 
printf "%3.6f  \n" "${b2u_mrsd10[0]}" 
printf "%3.6f  \n" "${b2u_mrsd11[0]}" 
printf "%3.6f  \n" "${b2u_mrsd12[0]}" 
printf "%3.6f  \n" "${b2u_mrsd13[0]}" 
printf "%3.6f  \n" "${b2u_mrsd14[0]}" 
printf "%3.6f  \n" "${b2u_mrsd15[0]}" 

