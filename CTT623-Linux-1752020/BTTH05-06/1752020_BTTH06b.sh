#! /bin/bash

input1="$1"
output1="$2"
DemTu ()
{
    echo "So tu $#"
   
}

LietKe ()
{
    for i in $*; do
	echo "$i"
    done
}
dem=0
DemSoLanLap ()
{
   a="b"
   for i in $*; do
       if [[ $i = $a ]]; then
	   ((dem++))
       fi
    done
   echo "So lan lap: $dem"
}
showInfos ()
{
    DemTu $*
    LietKe $*
    DemSoLanLap $*
}
readfile ()
{
    exec 3>|$2
    while read line; do
	showInfos $line >&3
    done <"$1"
    exec 3>&-
    
}

process ()
{
    local input1="$1"
    local output1="$2"
    readfile $input1 $output1
}

process $input1 $output1



