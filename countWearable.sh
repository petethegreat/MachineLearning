#!/bin/bash

# use awk to filter out words that are not in code chunks
# then wc to count words
cat Wearable.Rmd | awk ' BEGIN {words=1} { if ($0 ~ /```{r.*}/){ words=0 ; next; } ; if (words) { print $0 } ; if ($0 ~ /```/ ) { words=1 ; next;} }' | wc -w