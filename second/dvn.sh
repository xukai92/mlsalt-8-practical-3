printstrings --input=output/example/LATS.C.align/27.fst.gz -n 1 -u --output=C.27.hyp1.eng
hifst $DIR/configs/basic+params.features \
        --textinput=$DIR/input/test30.spa.idx \
        --rulefile=$DIR/rules/test30/C/r.?.gz \
        --lm=$DIR/lm/test30.news-newscomm.eng.4g/G/?.G.gz --lmn=4 \
        --range=27:27 \
        --latoutputfst=output/example/LATS.C.hyp1/?.fst.gz \
        --towardsreference=C.27.hyp1.eng

printstrings --input=output/example/LATS.C.align/17.fst.gz -n 1 -u --output=C.17.hyp1.eng
hifst $DIR/configs/basic+params.features \
        --textinput=$DIR/input/test30.spa.idx \
        --rulefile=$DIR/rules/test30/C/r.?.gz \
        --lm=$DIR/lm/test30.news-newscomm.eng.4g/G/?.G.gz --lmn=4 \
        --range=17:17 \
        --latoutputfst=output/example/LATS.C.hyp1/?.fst.gz \
        --towardsreference=C.17.hyp1.eng
