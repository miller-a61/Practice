read x
(( y = x/2 ))
(( z = y ))

for (( i=1; i<=y; i++ )); do

    (( z = z + y/i*(1+x/i) ))
    if ((x/i%2==1))
    then
       (( z += 1+y/i ));
    fi
done

echo "$z";