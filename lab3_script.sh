#!/bin/bash
# Authors : Tyler Faragallah
# Date: 09/20/2019

#Problem 1 Code:
##Searching for a regex
echo "enter a file name" #ask for filename
read fileName
echo "enter a regular expression" #ask for regular expression
read regExpress
grep -E $regExpress $fileName #search for regular expression

##Counting phone numbers
grep -E -c "[0-9]{3}-[0-9]{3}-[0-9]{4}" $fileName

##Counting Emails
grep -E -c "[A-Za-z0-9]*@[A-Za-z0-9]*.[A-Za-z0-9]{3}" $fileName

##Listing 303 Numbers
grep -E "303-[0-9]{3}-[0-9]{4}" $fileName

##Writing emails to file
grep -E "[A-Za-z0-9]*@geocities.com" $fileName >> email_results.txt
