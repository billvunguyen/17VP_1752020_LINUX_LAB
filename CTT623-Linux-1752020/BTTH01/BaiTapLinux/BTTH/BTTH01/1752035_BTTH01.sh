#! /bin/bash
#Ho va ten la : 
#MSSV la : 1752035
#Ten bai tap la : BTTH01

#3.1.1
echo "Hello World"

#3.1.4
MESSAGE="Hello World"
echo $MESSAGE

#3.1.5: Kiem tra so am duong
echo "Input a number"
read number
if [ $number -gt 0 ]
then
    echo "$number la so duong"
else
    if [ $number -eq o ]
    then
	echo "$number is zero"
    fi
    echo "$number la so am"
fi

#3.1.6: Kiem tra so chan le
echo "Input a number"
read number
if [$number % 2]
then
    echo "$number la so le"
else
    echo "$number la so chan"
fi

#3.1.7: In so tu 1 toi N
echo "Input a number"
read number
counter=1
while [ $counter -le $number ]
do
    echo $counter
    ((counter++))
done