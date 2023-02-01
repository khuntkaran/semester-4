echo "Enter Range : "
read range
i=1
while [ $i -le $range ]
do
    no1=$i
    no2=0
    while [ $no1 -gt 0 ]
    do
        temp=`expr $no1 % 10`
        no2=`expr $no2 \* 10`
        no2=`expr $no2 + $temp`
        no1=`expr $no1 / 10`
    done
    if [ $i -eq $no2 ]
        then 
        echo -n "$i "
    fi
    i=`expr $i + 1`
done