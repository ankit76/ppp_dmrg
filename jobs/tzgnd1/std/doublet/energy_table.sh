#!/bin/bash

pre="tzgnd1"
#nuc repulsion energy

##get arrays of energies
#
dmrg1=($(grep -i 'Minimum energy encountered during all instructions' "$pre""_a1.out" | awk '{printf "%3.6f\n", $9}'))
dmrg2=($(grep -i 'Minimum energy encountered during all instructions' "$pre""_b2.out" | awk '{printf "%3.6f\n", $9}'))

#write in a table

printf "\\hline\n" 
printf "\\multirow{3}{*}{\$ Standard \$} &  %3.6f & %3.6f  \\\\\\ \n"  "${dmrg1[0]}" "${dmrg2[0]}" 
printf "  & %3.6f & %3.6f  \\\\\\ \n"  "${dmrg1[1]}" "${dmrg2[1]}" 
printf "  & %3.6f & %3.6f  \\\\\\ \n"  "${dmrg1[2]}" "${dmrg2[2]}" 
printf "\\cline{2-5}\n" 

#repeat

