printstrings --input=output/example/LATS.A/27.fst.gz -n 1 -u --output=A.27.hyp1.eng
hifst $DIR/configs/basic+params.features \
        --textinput=$DIR/input/test30.spa.idx \
        --rulefile=$DIR/rules/test30/A/r.?.gz \
        --lm=$DIR/lm/test30.news-newscomm.eng.4g/G/?.G.gz --lmn=4 \
        --range=27:27 \
        --latoutputfst=output/example/LATS.A.hyp1/?.fst.gz \
        --towardsreference=A.27.hyp1.eng

printstrings --input=output/example/LATS.B/27.fst.gz -n 1 -u --output=B.27.hyp1.eng
hifst $DIR/configs/basic+params.features \
        --textinput=$DIR/input/test30.spa.idx \
        --rulefile=$DIR/rules/test30/B/r.?.gz \
        --lm=$DIR/lm/test30.news-newscomm.eng.4g/G/?.G.gz --lmn=4 \
        --range=27:27 \
        --latoutputfst=output/example/LATS.B.hyp1/?.fst.gz \
        --towardsreference=B.27.hyp1.eng

printstrings -n 1 -u -w --input=output/example/LATS.A.hyp1/27.fst.gz
printstrings -n 1 -u -w --input=output/example/LATS.B.hyp1/27.fst.gz
