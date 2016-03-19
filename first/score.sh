echo 'Grammar A:'
ScoreBLEU.sh -t outA -r $DIR/reference/test30.eng -d
echo 'Grammar B:'
ScoreBLEU.sh -t outB -r $DIR/reference/test30.eng -d
