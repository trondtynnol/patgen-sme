#!/bin/bash
# This script depends on the alias hdsmeNorm being set to something like 'hfst-lookup $GTLANGS/lang-sme/src/fst/generator-gt-norm.hfstol'

while read <&3 p; do
    while read <&4 q; do
        echo "$p$q"
    done 4<paradigms/A_Attr.par
done 3< lemma-lists/A_Attr.txt