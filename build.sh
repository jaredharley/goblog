#!/bin/bash
# Jared Harley
# 2015-02-19
# This script builds the goblog application

# Create the GOFILES variable with a list of all .go files
# in the directory.
GOFILES="$(ls *.go)"

# Build the Go application using the GOFILES variable
echo Building with the following go files:
echo $GOFILES
echo
echo Building with go build
go build -o goblog $GOFILES
echo Build script complete

