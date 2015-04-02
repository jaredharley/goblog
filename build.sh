#!/bin/bash
# Jared Harley
# 2015-02-19
# This script builds the gojekyll application in the bin/ folder

# Create the GOFILES variable with a list of all .go files
# in the directory.
GOFILES="$(ls *.go)"

# Build the Go application using the GOFILES variable
go build -o bin/gojekyll $GOFILES
