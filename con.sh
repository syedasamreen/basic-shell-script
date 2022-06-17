read n
if [ $n -gt 0 ]
then
echo positive nu,ber
fi

echo enter value for n:
read n
if [ $n -gt 0 ]
then 
echo $n is positive number
else
echo $n is negative number
fi


echo Enter value again:
read n
if [ $n -lt 10 ]
then 
echo $n is lessthen 10
elif [ $n -gt 10 ]
then
echo $n is gterter then 10
else
echo $n is unknow
fi
