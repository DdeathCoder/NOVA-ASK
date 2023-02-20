#!/usr/bin/env bash


FIL=$FILE
FIL=$( echo "$FIL" | tr -d '\0')
StringFor=$( echo "$FIL" | grep -Poz "\bfor\b(\s*|.+){1,}?\bdone\n" |tr -d '\0' > out.txt) 
StringFor=$(cat "out.txt")



# echo "unfil :
#      $StringFor"
    

if [ -n "$StringFor" ]; then
    echo ""
    # echo "$StringFor"
    echo "hi"
    StringForChecked=$( echo "$StringFor" | grep -Pozv "\bfor\s*(\(\()+.+(\)\));?\s*\bdo\b\s+(.|\s)+?\b(done)\b\n" | tr -d '\0' > out1.txt)
    # echo "a = $StringFor"
    # echo "$FIL"
    # cat "out.txt"
    # echo 'text here'
    # cat "out1.txt"
    
    StringForChecked=$(cat "out1.txt" )
    # echo " filtered :  $StringForChecked"


    echo ""
    len1=$( cat "out.txt" | wc -l )
    len2=$( cat "out1.txt" | wc -l )
    echo "${len1}"
    echo "${len2}"
    
    
    # if [ $len1 -lt $len2  ]; then
    
     if [ -n "$StringForChecked" ]; then
         
        echo "There is error in : For Loop "
        echo  "$StringForChecked"
        echo ""
   
    else
         echo "There is no error in : For Loop "
        # echo  "$StringFor"
        echo ""
        exit 0
    fi
else 
    echo 'no for loop'

    
fi



# for\s*(\(\()+.+(\)\));\s*\bdo\b\s+(.|\s)+\b(done)\b






