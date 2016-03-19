date > t1
hifst $DIR/configs/basic+params.features \
        --textinput=$DIR/input/test30.spa.idx \
        --rulefile=$DIR/rules/test30/A/r.?.gz \
        --lm=$DIR/lm/test30.news-newscomm.eng.4g/G/?.G.gz --lmn=4 \
        --range=1:30 \
        --latoutputfst=output/example/LATS.A/?.fst.gz
date > t2
hifst $DIR/configs/basic+params.features \
        --textinput=$DIR/input/test30.spa.idx \
        --rulefile=$DIR/rules/test30/B/r.?.gz \
        --lm=$DIR/lm/test30.news-newscomm.eng.4g/G/?.G.gz --lmn=4 \
        --range=1:30 \
        --latoutputfst=output/example/LATS.B/?.fst.gz
date > t3
