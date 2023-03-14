echo "Enter A"
read A
echo "Enter B"
read B
echo "Enter C"
read C

if [ $A -gt $B ]
then 
    if [ $A -gt $C ]
        then 
        echo "A is grater"
    else echo "C is grater"
    fi
else 
    if [ $B -gt $C ]
        then 
        echo "B is grater"
    else
        echo "C is grater"
    fi
fi
