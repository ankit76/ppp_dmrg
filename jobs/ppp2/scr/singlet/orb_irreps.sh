#!/bin/bash

# get the necessary site coefficients (check the order)
awk '/ORB /{print $0; for(i=1;i<10;i++){getline;if(i==4||i==8||i==9){print $0;};}}' ppp2_scr.out > .temp
awk '{printf "%s \n", $0;}' .temp > .temp_space

# get line and field number for an orb
for i in {1..18}
do
lf=($(awk -v n="$i" '/ORB/ {for(j=1;j<=NF;j++){if($j==n){f=j/2+2; print NR, f; break;}}}' .temp_space))
awk -v l="${lf[0]}" -v f="${lf[1]}" '{if(NR==l){getline; for(i=1;i<=3;i++){print $f; getline;};}}' .temp_space > .coeffs
awk '{c1=$0;getline;c2=$0;getline;c3=$0;if(c1==c3){if(c1==c2) printf "1, "; else printf "4, ";} else {if(c1==c2) printf "3, "; else printf "2, ";};}' .coeffs
done
printf "\n"
rm .temp .temp_space .coeffs -f
