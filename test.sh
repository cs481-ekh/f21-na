#!/bin/bash
set -e

# python version test
echo = "python testing"
CURR = "python3 --version"
SUB = "python 3.6"

if [["$CURR"] =~ .*"SUB".*]]; 
then
    echo 0
fi

# tensorflow version test
echo = "tensorflow testing"
CURR = "pip list | grep tensorflow"
SUB = "tensorflow (1.13"

if [["$CURR"] =~ .*"SUB".*]]; 
then
    echo 0
fi

## pybind version test
echo = "pybind testing"
CURR = "pip list | grep pybind"
SUB = "pybind (11"

if [["$current_ver"] =~ .*"SUB".*]]; 
then
    echo 0
fi

## ros
echo = "ros testing"
current_ver = "pip list | grep ros"
SUB = "ros"

if [["$current_ver"] =~ .*"SUB".*]]; 
then
    echo 0
fi

exit 127
