#!/bin/bash

# Runs a series of checks on python code
# Requires that pylint, flake8, and mypy are installed
#	All can be installed with pip

# Usage: lint_python.sh [Path to Script]

# Get usage function
display_usage (){
	echo "Usage: $0 [Path To Script]"
	exit 1
}

# Run checks
if [ $# -ne 1 ] ; then
	display_usage
else
    PYFILE=$1
    echo "pylint check:"
    pylint "$PYFILE"
    echo "flake8 check:"
    flake8 "$PYFILE"
    echo "mypy check:"
    mypy "$PYFILE"
fi

