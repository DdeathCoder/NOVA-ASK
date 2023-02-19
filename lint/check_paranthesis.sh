#!/usr/bin/env bash
# echo "hi"
FIL=$FILE
FIL=$( echo "$FIL" | tr -d '\0')

echo  "$FIL"
StringFor=$( echo "$FIL" | grep -Pvz "^((?:[^()]+|\((?1)?\))*)$" )
StringFor=$( cat "out.txt")


if [ -n "$StringFor" ]; then
    echo ""
    # echo "$StringFor"
    echo "no Error in paranthesis "

else
    echo "Error in paranthesis"
fi
