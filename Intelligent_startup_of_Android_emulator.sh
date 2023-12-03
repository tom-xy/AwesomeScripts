#!/bin/bash
set -e

# List all Android emulators and start the selected emulator by entering a number.

avds=$(emulator -list-avds)

SAVEIFS=$IFS # Save current IFS (Internal Field Separator)
IFS=$'\n' # Change IFS to newline char
avds=($avds) # Split the `names` string into an array by the same name
IFS=$SAVEIFS # Restore original IFS

for (( i=0; i<${#avds[@]}; i++ ))
do
    echo "$i: ${avds[$i]}"
done

echo "Enter a number to select emulator..."
read num
emulator -avd "${avds[${num}]}"