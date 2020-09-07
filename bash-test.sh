#!/bin/bash

## test if the file contains the word jackass or not
if openssl enc -base64 -A -d < home-screen-text.txt | grep -q "jackass"
  then exit 1
  else exit 0
fi

## easiest solution, given by the website
# git bisect start
# git bisect bad HEAD
# git bisect good 1.0
# git bisect run sh -c "openssl enc -base64 -A -d < home-screen-text.txt | grep -v jackass"
