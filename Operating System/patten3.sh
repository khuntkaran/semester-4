echo "Enter N : "
read n

for (( i=1; i<=n; i++ ))
do
    for(( j=1; j<=n-i; j++ ))
    do
        echo -n " "
    done
    for(( j=1; j<=i; j++ ))
    do
        echo -n "* "
    done
    echo ""
done