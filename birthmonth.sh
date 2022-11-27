#!/bin/bash -x
m1=0
m2=0
m3=0
m4=0
m5=0
m6=0
m7=0
m8=0
m9=0
m10=0
m11=0
m12=0
i=1
declare -A emp
declare -A finalprint

while (($i<=50))
do
  randomcheck=$((RANDOM%12+1))
  emp[$i]=$randomcheck
  ((i++))
  case $randomcheck in
                      1)
                      ((m1++))
                      ;;
                      2)
                      ((m2++))
                      ;;
                      3)
                      ((m3++))
                      ;;
                      4)
                      ((m4++))
                      ;;
                      5)
                      ((m5++))
                      ;;
                      6)
                      ((m6++))
                      ;;
                      7)
                      ((m7++))
                      ;;
                      8)
                      ((m8++))
                      ;;
                      9)
                      ((m9++))
                      ;;
                      10)
                      ((m10++))
                      ;;
                      11)
                      ((m11++))
                      ;;
                      *)
                      ((m12++))
                      ;;
 esac
 done

for((i=1;i<=12;i++))
do
  finalprint[$i]=$((m$i))
done

echo "total individual having birthday in same month are:${finalprint[@]}"

