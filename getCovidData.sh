#!/bin/bash
#
# This script pulls all the COVID-19 data for Connecticut data from 
# various sources and assembles them in a single data file.
#
# Data sources:
#  - The COVID Tracking Project (testing data) using their API
#    https://covidtracking.com
#  (- JHU CSSE COVID-19 data set, from local clone of their GitHub repository
#    https://github.com/CSSEGISandData/COVID-19.git
#    no longer being used as format keeps changing)
#    
# This script can be adapted for other regions by changing the commands
# specific for Connecticut 
#
# Written by Pedro Mendes <pmendes@uchc.edu>
# Copyright 2020 Pedro Mendes and University of Connecticut
#
# Permission is hereby granted, free of charge, to any person obtaining a copy 
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights 
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell 
# copies of the Software, and to permit persons to whom the Software is 
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in 
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR 
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE 
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER 
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, 
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE 
# SOFTWARE.

# filename for CT data
TARGET_CT=CT-COVID19.tsv
TARGET_NY=NY-COVID19.tsv

# location of the local JHU data folder
#JHUDIR=COVID-19/csse_covid_19_data/csse_covid_19_daily_reports

# filter Connecticut data from JHU data files, removing duplicate lines
#grep -h Connecticut $JHUDIR/*.csv | awk -F, 'OFS="," {print $3,$4,$5,$6}' | uniq > jhudata.csv

# get data from covidtracking.org just for Connecticut
curl -s https://covidtracking.com/api/states/daily.csv?state=CT | \
 awk -F, 'BEGIN {OFS=","} NR == 1 {print $1,$3,$4,$5,$6,$16,$15,$17}; NR > 1 {print $1,$3,$4,$5,$6,$16,$15,$17 | "sort"}' |\
 awk -F, 'BEGIN {OFS="\t"} NR == 1 {print "day",$2,$3,$4,$5,$6,$7,$8,$1}; NR > 1 {print NR-3,$2,$3,$4,$5,$6,$7,$8,$1}' \
 > $TARGET_CT

 # get data from covidtracking.org just for NY
curl -s https://covidtracking.com/api/states/daily.csv?state=NY | \
 awk -F, 'BEGIN {OFS=","} NR == 1 {print $1,$3,$4,$5,$6,$16,$15,$17}; NR > 1 {print $1,$3,$4,$5,$6,$16,$15,$17 | "sort"}' |\
 awk -F, 'BEGIN {OFS="\t"} NR == 1 {print "day",$2,$3,$4,$5,$6,$7,$8,$1}; NR > 1 {print NR-3,$2,$3,$4,$5,$6,$7,$8,$1}' \
 > $TARGET_NY

# we're done, isn't unix cute?