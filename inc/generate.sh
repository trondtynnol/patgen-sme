#!/bin/bash
# invoke like ./generate.sh <lemma-file> <paradigm-file>
# pipe the output through hdsmeNorm, remove ungenerated strings
# Example pipeline: ./generate.sh lemma-lists/A_Ord.txt paradigms/A_Ord.par |hdsmeNorm|grep -v "?"|grep -v "^$"|cut -f2 |sort -u > A_Ord.txt

while read <&3 p; do
    while read <&4 q; do
        echo "$p$q"
    done 4<$2
done 3<$1