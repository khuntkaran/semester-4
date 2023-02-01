echo "Enter No : "
read n
i=2
flag=0
while [ $i -le `expr $n / 2` ]
do
    if [ ` expr $n % $i ` -eq 0 ]
        then
        flag=1
        break
    fi
    i=`expr $i + 1`
done
if [ $flag -eq 0 ]
    then
    echo "prime"
else
    echo "not prime"
fi