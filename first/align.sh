hifst $DIR/configs/basic+params.features \
       --textinput=$DIR/input/test30.spa.idx \
       --rulefile=$DIR/rules/test30/A/r.?.gz \
       --lm=$DIR/lm/test30.news-newscomm.eng.4g/G/?.G.gz --lmn=4 \
       --range=1:30 \
       --latoutputfst=output/example/LATS.A.align/?.fst.gz \
       --towardsreference=$DIR/reference/test30/r.?.eng.idx

printstrings --r=1:30 -n 1 -u -w --input=output/example/LATS.A.align/?.fst.gz --print-output-labels 2> /dev/null --output=outA-aligned

hifst $DIR/configs/basic+params.features \
       --textinput=$DIR/input/test30.spa.idx \
       --rulefile=$DIR/rules/test30/B/r.?.gz \
       --lm=$DIR/lm/test30.news-newscomm.eng.4g/G/?.G.gz --lmn=4 \
       --range=1:30 \
       --latoutputfst=output/example/LATS.B.align/?.fst.gz \
       --towardsreference=$DIR/reference/test30/r.?.eng.idx

printstrings --r=1:30 -n 1 -u -w --input=output/example/LATS.B.align/?.fst.gz --print-output-labels 2> /dev/null --output=outB-aligned
