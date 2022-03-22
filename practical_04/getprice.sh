#!/bin/sh

wget -q -O - https://bigcharts.marketwatch.com/quickchart/quickchart.asp?symb=$1 | tr -d '\015' | tr '\n' ' ' | sed 's/^.*Last/Last/' | sed 's|\<td.*|<td|' | sed 's/^.*<div>//' | sed 's|\div.*||' | sed 's|<.*||' | tr -d ',,' 

