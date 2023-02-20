#!/bin/bash
FIL=$FILE
FIL=$( echo "$FIL" | tr -d '\0')

StringFor=$( echo "$FIL" | grep -Poz "\bcase\b(?:\s+|.+)+?\besac\b" | tr -d '\0' > out.txt) 
# StringFor=$(echo "$FIL" | grep -Poz "\bcase\b(\s*|.+)+\besac\b")
StringFor=$(cat "out.txt")


if [ -n "$StringFor" ]; then
 
  
    StringForChecked=$( echo "$StringFor" | grep -Poz "(\bcase\b\s+.+?\bin\b(?:\s*|.+)?(?:[a-zA-Z0-9*]+\s*\)(?:.+|\s*)+?(?:;;))+\s+\besac\b" | tr -d '\0' > out.txt) 
    StringForChecked=$(cat "out.txt")
    if [ -z "$StringForChecked" ]; then
         
        # echo 'error here '
        
        echo "There is error in : "
        echo "$StringFor"
        echo ""
        
   
    else
         printf "there is no error in CASE conditional "
    fi

else 
  echo "case conditional not caught"
  
    
fi

# for\s*(\(\()+.+(\)\));\s*\bdo\b\s+(.|\s)+\b(done)\b