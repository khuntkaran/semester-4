echo "Enter subject No1 mark : "
read no1
echo "Enter subject No2 mark : "
read no2
echo "Enter subject No3 mark : "
read no3
echo "Enter subject No4 mark : "
read no4
echo "Enter subject No5 mark : "
read no5

total=`expr $no1 + $no2 + $no3 + $no4 + $no5`
per=`expr $total / 5`

if [ $per -gt 0 -a $per -le 39 ]
then
echo "fail class"
elif [ $per -gt 39 -a $per -le 59 ]
then
echo "pass class"
elif [ $per -gt 59 -a $per -le 69 ]
then
echo "first class"
elif [ $per -gt 69 -a $per -le 100 ]
then
echo "distinct class"
else
echo "wrong mark "
fi

echo "your percentage = $per%"