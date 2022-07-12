#!/bin/bash
truepal="palindrome"
falsepal="!palindrome"
result=""
palindrome(){
parval=$1
len=${#parval}
for (( i=0;i<len/2;i+=1 ))
do
    if [ ${parval:i:1} != ${parval:len-1-i:1} ]
    then
        return 0
    else
        return 1
    fi
done
}
var=$(<textpalindrome.txt)
IFS=' '
read -a splitvar <<< "$var"
for i in "${splitvar[@]}"
do
    palindome $i
    if [[ $? -eq 1 ]]
    then
        result+="${truepal} "
    else
        result+="${falsepal} "
    fi
done

echo "$result" > resultpalindrome.txt
