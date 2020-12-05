#!/bin/bash

tar -xzf R402.tar.gz

export PATH=$PWD/R/bin:$PATH
export RHOME=$PWD/R

tar -xzf $2.tgz

Rscript hw6.R $1 $2
