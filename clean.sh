#!/bin/bash

find . -type f -exec file {} \; | grep "Mach-O" | awk -F ':'  '{print $1}'| sed 's/[ ][ ]*/\\\ /g' |xargs rm -rf
find . -type f -exec file {} \; | grep "PE32" | awk -F ':'  '{print $1}'| sed 's/[ ][ ]*/\\\ /g' |xargs rm -rf

# find . -type f -exec file {} \; | grep "Mach-O" | awk -F ':'  '{print $1}'| xargs rm -rf '{}'
# find . -type f -exec file {} \; | grep "PE32" | awk -F ':'  '{print $1}'| xargs rm -rf '{}'
# find . -type f -exec file {} \; | grep "PE32" | awk -F ':'  '{print $1}'| xargs echo