#!/bin/bash -x

echo "random dice number is:$((RANDOM%6+1))"

declare -A dice

a=0
b=0
c=0
d=0
e=0
f=0
i=1

while ((a<10 && b<10 && c<10 && d<10 && e<10 && f<10))
do
   randomcheck=$((RANDOM%6+1))
   dice[$i]=$randomcheck
   ((i++))
   case $randomcheck in
                       1)
                       ((a++))
                       ;;
                       2)
                       ((b++))
                       ;;
                       3)
                       ((c++))
                       ;;
                       4)
                       ((d++))
                       ;;
                       5)
                       ((e++))
                       ;;
                       *)
                       ((f++))
                       ;;
  esac
done

echo "the total number of dice rolled are:${#dice[@]}"
echo "all dice numbers are:${dice[@]}"



if(($a>$b && $a>$c && $a>$d && $a>$e && $a>$f))
then
    echo "max dice num is 1:$a times"
elif(($b>$c && $b>$d && $b>$e && $b>f))
then
    echo "max dice num is 2:$b times"
elif(($c>$d && $d>$e && $d>$f))
then
    echo "max dice num is 3:$c times"
elif(($d>$e && $d>$f))
then
    echo "max dice num is 4:$d times"
elif(($e>$f))
then
    echo "max dice num is 5:$e times"
else
    echo "max dice num is 6:$f times"
fi

if(($a<$b && $a<$c && $a<$d && $a<$e && $a<$f))
then
    echo "min dic num is 1:$a times"
elif(($b<$c && $b<$d && $b<$e && $b<$f))
then
    echo "min dic num is 2:$b times"
elif(($c<$d && $c<$e && $c<$f))
then
    echo "min dic num is 3:$c times"
elif(($d<$e && $d<$f))
then
    echo "min dic num is 4:$d times"
elif(($e<$f))
then
    echo "min dic num is 5:$e times"
else
    echo "min dic num is 6:$f times"
fi
