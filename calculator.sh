#!/bin/bash
while true
do
clear
echo "Kalkulator pada Bash Script"
echo "Pilihan Operator :"
echo "+,-,*,/"
echo -n "Angka 1 : "
read a;
echo -n "Operator 1 : "
read op1;
echo -n "Angka 2 : "
read b;
echo -n "Operator 2 : "
read op2;
echo -n "Angka 3 : "
read c;
echo "$a $op1 $b $op2 $c = $(($a$op1$b$op2$c))"
echo -n "Apakah anda ingin mengulangi (y/n)? "
read pil
if [ "$pil" != y ]
  break
fi
done
echo "Pemograman Kalkulator Bash Script selesai!!!"
