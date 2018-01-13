#!/bin/bash
lines=$(wc -l queries | grep -o -P '.+(?= queries)')
i=1
while [ "$i" -le "$lines" ]
  do
    if [ "$(wc -l queries | grep -o -P '.+(?= queries)')" == "0" ]
      then
        echo -ne "\n"
        echo Done
        exit 1;
    fi
    head -$i queries | python3 urldecode.py > queries.decoded
    echo -ne "${i} / ${lines}\r"
    i=$[$i + 1]
    sleep 0.2
done
echo -ne "\n"
echo Done