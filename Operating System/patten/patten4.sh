echo "Enter N : "
read n

for (( i=n; i>=1; i-- ))
do
    for(( j=1; j<=n-i; j++ ))
    do
        echo -n " "
    done
    for(( j=i; j>=1; j-- ))
    do
        echo -n "* "
    done
    echo ""
done