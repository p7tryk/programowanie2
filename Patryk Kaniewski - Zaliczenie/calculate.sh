#!/bin/bash
for i in {1...2}
do
    ./comparesort1.out >> sortcomparison.txt
    echo "random"
    echo "random" >> sortcomparisons.txt
done

for i in {1...2}
do
    ./comparesort2.out >> sortcomparison.txt
    echo "ordered"
    echo "ordered" >> sortcomparisons.txt
done

for i in {1...2}
do
    ./comparesort3.out >> sortcomparison.txt
    echo "reversed"
    echo "reversed" >> sortcomparisons.txt
done
