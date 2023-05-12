#!/bin/bash -x

isPartTime=1
isFullTime=2
empRatePerHr=20
#numOfWorkingDays=20

totalsalary=0

for (( day=1;  day<=20; day++ ))
do
	randomCheck=$((RANDOM%3))
		case $randomCheck in
				$isFUllTime )
					empHr=8
				;;
				$isPartTime )
					empHr=4
				;;
				*)
					empHr=0
		esac


	salary=$(($empHr*$empRatePerHr))
	totalsalary=$(($totalsalary+$salary))
done
