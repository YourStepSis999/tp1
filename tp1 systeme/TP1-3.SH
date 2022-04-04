#!/bin/bash

awk '{print FILENAME" \"" $0"\""; nextfile}' *.txt >output.txt
