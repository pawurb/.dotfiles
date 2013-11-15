#!/bin/bash
# Compile and run objective C program
gcc $1.m  `gnustep-config --objc-flags` -lgnustep-base -o $1 && ./$1


