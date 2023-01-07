#!/bin/bash

# Place your code here

char=$(echo "$1" | grep -o "[a-zA-Z]" | wc -l)
special=$(echo "$1" | grep -o "[\!\@\#\$\%\^\&\(\)_\+\*]" | wc -l)
numbers=$(echo "$1" | grep -o "[0-9]" | wc -l)

# Output

echo "Numbers $numbers: Symbols $special: Letters $char"
