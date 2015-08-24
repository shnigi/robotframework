#!/bin/bash
# executerobot.sh: a  shell script to run robot tests

function runByTestName() {
  pybot --test "$1"  --exclude pending --noncritical notimplemented -d results .
}

function runByFile() {
  pybot --noncritical notimplemented -d results $1
}

function runAllTests() {
  pybot --exclude pending --noncritical notimplemented -d results .
}


