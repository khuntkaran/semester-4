echo "Enter Number "
read n
i=1
while [ $i -le 10 ]
do
    m=`expr $i \* $n`
    echo "$n x $i = $m"
    i=`expr $i + 1`
done