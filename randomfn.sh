#! /bin/bash

#a=$(( RANDOM%10 ))
echo 'single digit random number:' $(( RANDOM%10 ))
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

echo single dice gives: $(( RANDOM%6+1 ))
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

echo addition of two dices
dice1=$(( RANDOM%6+1 )) && dice2=$(( RANDOM%6+1 ))
echo dice1 and dice2 gives $dice1, $dice2 respectively
echo addition of dices is $(( dice1+dice2 ))
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

number1=$(( RANDOM%90+10 ))
number2=$(( RANDOM%90+10 ))
number3=$(( RANDOM%90+10 ))
number4=$(( RANDOM%90+10 ))
number5=$(( RANDOM%90+10 ))
echo Sum of $number1,$number2,$number3,$number4,$number5 is $(( number1+number2+number3+number4+number5 ))

