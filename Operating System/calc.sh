# Calculator
echo "Enter Number Operation and then Number and equals in opr for output"
read no1

while true
do
    read opr
    if [ "$opr" != "=" ]
    then
        read no2
        case $opr in
            +)
            no1=`expr $no1 + $no2`
            ;;
            -)
            no1=`expr $no1 - $no2`
            ;;
            \*)
            no1=`expr $no1 \* $no2`
            ;;
            /)
            no1=`expr $no1 / $no2`
            ;;
        esac
        continue
    fi
    break
done
echo "$no1"