

TMP=$(mktemp)
for i in $(seq 0 9)
do
    for j in $(seq $i 9)
    do
       echo \$ $i + $j = \\ldots \$ >> $TMP
    done
done
sort -Ro $TMP $TMP
sed "/noindent/ r $TMP" squelette.tex > additions_0_9.tex
