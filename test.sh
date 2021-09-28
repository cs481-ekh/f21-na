#!/bin/bash
set -e

# python version test
current_ver = 'python3 --version'
SUB = 'python 3.6'

if [["$current_ver"] =~ .*"SUB".*]]; 
then
    echo 0
fi

# tensorflow version test
current_ver = 'pip list | grep tensorflow'
SUB = 'tensorflow (1.13'

if [["$current_ver"] =~ .*"SUB".*]]; 
then
    echo 0
fi

## pybind version test
current_ver = 'pip list | grep pybind'
SUB = 'pybind (11'

if [["$current_ver"] =~ .*"SUB".*]]; 
then
    echo 0
fi

## ros
current_ver = 'pip list | grep ros'
SUB = 'ros'

if [["$current_ver"] =~ .*"SUB".*]]; 
then
    echo 0
fi

exit 127