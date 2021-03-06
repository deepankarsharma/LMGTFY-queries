#!/bin/bash
hash=( 0 1 2 3 4 5 6 7 8 9 A B C D E F G H I J K L M N O P Q R S T U V W X Y Z a b c d e f g h i j k l m n o p q r s t u v w x y z )

read -p "Which third do you take? (enter 1, 2 or 3) " third

if [ "$third" == "1" ]
  then
    echo calculating first third of hashes...

    for hashbit in {0..61}
    do
      echo ${hash[hashbit]} >> hashes
    done

    for hashbit1 in {0..61}
    do
      for hashbit2 in {0..61}
      do
        echo ${hash[hashbit1]}${hash[hashbit2]} >> hashes
      done
    done

    for hashbit1 in {0..61}
    do
      for hashbit2 in {0..61}
      do
        for hashbit3 in {0..61}
        do
          echo ${hash[hashbit1]}${hash[hashbit2]}${hash[hashbit3]} >> hashes
        done
      done
    done

    for hashbit1 in {0..5}
    do
      for hashbit2 in {0..61}
      do
        for hashbit3 in {0..61}
        do
          for hashbit4 in {0..61}
          do
            echo ${hash[hashbit1]}${hash[hashbit2]}${hash[hashbit3]}${hash[hashbit4]} >> hashes
          done
        done
      done
    done
fi

if [ "$third" == "2" ]
  then
    echo calculating second third of hashes...

    for hashbit1 in {6..10}
    do
      for hashbit2 in {0..61}
      do
        for hashbit3 in {0..61}
        do
          for hashbit4 in {0..61}
          do
            echo ${hash[hashbit1]}${hash[hashbit2]}${hash[hashbit3]}${hash[hashbit4]} >> hashes
          done
        done
      done
    done
fi

if [ "$third" == "3" ]
  then
    echo calculating second third of hashes...

    for hashbit1 in {11..15}
    do
      for hashbit2 in {0..61}
      do
        for hashbit3 in {0..61}
        do
          for hashbit4 in {0..61}
          do
            echo ${hash[hashbit1]}${hash[hashbit2]}${hash[hashbit3]}${hash[hashbit4]} >> hashes
          done
        done
      done
    done
fi

echo "hashes calculation finished:"; wc -l hashes
tar -czf hashes.history.tar.gz hashes
echo "you can start a cron calling lmgtfy.sh now"