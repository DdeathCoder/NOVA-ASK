#!/usr/bin/env bash

StringFor=$(cat $FILE | grep -Poz "\bfor\b(\s*|.+){1,}\bdone")

if [ -n "$StringFor" ]; then
    echo ""
    # echo "$StringFor"
    echo "hi"
    StringForChecked=$(echo $StringFor | grep -Poz "\bfor\s*(\(\()+.+(\)\));?\s*\bdo\b\s+(.|\s)+\b(done)\b" | tr -d '\0' >out.txt)
    # echo "a = $StringFor"
    # echo "$FIL"
    StringFor=$(cat out.txt)

    echo ""
    if [ -z "$StringForChecked" ]; then
         
        echo "There is error in : For Loop "
        # echo  "$StringFor"
        echo ""
   
    else
         echo "There is no error in : For Loop "
        # echo  "$StringFor"
        echo ""
        exit 0
    fi
    
fi

# for\s*(\(\()+.+(\)\));\s*\bdo\b\s+(.|\s)+\b(done)\b






