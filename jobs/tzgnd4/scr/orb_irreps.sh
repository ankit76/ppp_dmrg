#!/bin/bash

# get the necessary site coefficients (check the order)
awk '/ORB_/{print $0; for(i=1;i<46;i++){getline;if(i==44||i==45){print $0;};}}' tzgnd4.out > .temp
awk '{printf "%s \n", $0;}' .temp > .temp_space
# get line and field number for an orb
for i in {1..46}
do
#lf=($(awk -v n="$i" -v orb=" $i " '$0 ~ orb{for(j=1;j<=NF;j++){if($j==n){f=j/2+2; break};} print NR, f; exit;}' .temp_space))
lf=($(awk -v n="$i" '/ORB/ {for(j=1;j<=NF;j++){if($j==n){f=j/2+2; print NR, f; break;}}}' .temp_space))
#echo "${lf[0]}" "${lf[1]}"
awk -v l="${lf[0]}" -v f="${lf[1]}" '{if(NR==l){getline; for(i=1;i<=2;i++){print $f; getline;};}}' .temp_space > .coeffs
awk '{c1=$0;getline;c2=$0;if(c1==c2) printf "1,"; else printf "3,";}' .coeffs
#echo "$coeff"
done
printf "\n"
#rm .temp .temp_space .coeffs -f
