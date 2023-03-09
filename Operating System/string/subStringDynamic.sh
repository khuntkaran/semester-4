echo "Enter String"
read n1
echo "Enter Starting Index"
read si
echo "Enter Ending Index"
read ei
subStr=${n1:$si:$ei}
echo $subStr