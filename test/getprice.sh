#!/bin/sh

wget -q -O - https://bigcharts.marketwatch.com/quickchart/quickchart.asp?symb=$1 | tr -d '\015' | tr '\n' ' ' > test.txt