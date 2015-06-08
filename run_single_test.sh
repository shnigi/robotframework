#!/bin/bash
source ./executerobot.sh

if [[ $1 == ./* ]];
then
  runByFile $1;
else 
  runByTestName "$1";
fi

