echo enter the value n:
read n
while [ $n -gt 5 ]
do
    echo $n
    n=$(expr $n - 1)
done

echo enter the value n:
read n
until [ $n -lt 0 ]
do
    echo $n
    n=$(expr $n - 1)
done

