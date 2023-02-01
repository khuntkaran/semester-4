echo "Enter No : "
read no
no1=$no
no2=0
while [ $no1 -gt 0 ]
do
    temp=`expr $no1 % 10`
    no2=`expr $no2 \* 10`
    no2=`expr $no2 + $temp`
    no1=`expr $no1 / 10`
done
if [ $no -eq $no2 ]
    then 
    echo "Number is palindrom"
else
    echo "Number not is palindrom"
fi