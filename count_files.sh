#!/bin/bash
#count files in current directory, summarize by subdirectory (1 level)
find . -type f | cut -d/ -f2 | sort | uniq -c
#same, 2 levels
find . -type f | cut -d/ -f2,3 | sort | uniq -c
#etc, etc
