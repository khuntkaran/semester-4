i=1
echo "Enter Element "
read n
ans=0
while [ $i -le $n ]
do
    echo "Enter number "
    read x
    ans=`expr $ans + $x`
    i=`expr $i + 1`
done
avg=`expr $ans / $n`
echo "average = $avg"