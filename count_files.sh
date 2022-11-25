#!/bin/bash
#count files in current directory, summarize by subdirectory (1 level)
find . -type f | cut -d/ -f2 | sort | uniq -c
#same, 2 levels
find . -type f | cut -d/ -f2,3 | sort | uniq -c
#etc, etc
#I only care about files of a certain type (i.e. .tsv)
find . -type f -iname "*.tsv" | cut -d/ -f2 | sort | uniq -c
