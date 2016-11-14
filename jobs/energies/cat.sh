#!/bin/bash

#echo -e "------$f------\n";
for f in *.ene; do  cat "$f"; done >> tpa.ene
