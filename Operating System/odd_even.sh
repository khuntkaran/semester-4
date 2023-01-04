echo "Enter A"
read A
if [ `expr $A % 2` -eq 0 ]
then
echo "A is even"
else
echo "A is odd"
fi