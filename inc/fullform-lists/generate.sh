#!/bin/bash
# invoke like ./generate.sh <lemma-file> <paradigm-file>
# pipe the output through hdsmeNorm, remove ungenerated strings

while read <&3 p; do
    while read <&4 q; do
        echo "$p$q"
    done 4<$2
done 3<$1