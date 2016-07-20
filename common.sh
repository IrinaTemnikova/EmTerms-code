ARKJAR="ark-tweet-nlp-0.3.2/ark-tweet-nlp-0.3.2.jar"
test -e $ARKJAR || echo "Not found: $ARKJAR"
JAVA="java -Xmx2G -cp $ARKJAR"
