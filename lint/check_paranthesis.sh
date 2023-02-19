#!/usr/bin/env bash
# echo "hi"
stringg=$FILE
StringFor=$(echo "$stringg"| grep -Pvz "^((?:[^()]+|\((?1)?\))*)$")


if [ -n "$StringFor" ]; then
    echo ""
    # echo "$StringFor"
    echo "no Error in paranthesis "

else
    echo "Error in paranthesis"
fi


# 






