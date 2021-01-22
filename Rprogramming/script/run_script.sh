#!/bin/bash

PARENT=${PWD%/*}
SOURCE="src"

Rscript $PARENT/$SOURCE/DataGenerating.R
Rscript $PARENT/$SOURCE/main.R

echo "Runing R scripts..."
