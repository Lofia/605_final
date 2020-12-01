#!/bin/bash

sort -t , -k 1 -n -u *.csv | sed -n '2,101p' > best100.csv
