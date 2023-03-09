echo "Enter String"
read n1
length=${#n1}
for((i=$length-1;i>=0;i--))
do
    reverse=$reverse${n1:$i:1}
done
if [ $n1 == $reverse ]
then
echo "Palindrome"
else
echo "Not Palindrome"
fi
