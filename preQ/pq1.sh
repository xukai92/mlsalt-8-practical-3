hifst $DIR/configs/basic+params.features \
        --textinput=$DIR/input/test30.spa.idx \
        --rulefile=$DIR/rules/test30/B/r.?.gz \
        --lm=$DIR/lm/test30.news-newscomm.eng.4g/G/?.G.gz --lmn=4 \
        --range=14:14 \
        --latoutputfst=output/example/LATS/?.fst.gz
