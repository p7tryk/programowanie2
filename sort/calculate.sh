#!/bin/bash

rm sortcomparison.txt
# for i in {1...1}
# do
    ./comparesort1.out >> sortcomparison.txt
# done

# for i in {1...1}
# do
    ./comparesort1.out -s >> sortcomparison.txt
# done

# for i in {1...1}
# do
    ./comparesort1.out -r >> sortcomparison.txt
    
# done

cat sortcomparison.txt
