#!/bin/bash
#cd "$1"
ls -1 -R | tr '[A-Z]' '[a-z]' | sort | uniq -c 
#| grep -v " 1 
