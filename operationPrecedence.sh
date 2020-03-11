#! /bin/bash
# script to understand precedence of operator
read -p "enter three numbers: " a b c;
echo "a =" $a"," "b =" $b"," "c =" $c
echo "a+b*c =" $(( a+b*c ))
echo "a%b+c =" $(( a%b+c ))
echo "c+a/b =" $(( c+a/b ))
echo "a*b+c =" $(( a*b+c ))
