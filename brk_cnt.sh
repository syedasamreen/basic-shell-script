#echo Enter the number n:
for i in $(seq 1 1 10)
do
if [ $i -eq 6 ]
then
break
fi
echo $i
done

for i in $(seq 1 1 10)
do
if [ $i -eq 6 ]
then
continue
fi
echo $i
done

echo Enter the number n:
read n
i=0
while [ $i -le $n ]
do 
if [ $i -eq 4 ]
then
break
fi
echo $i
i=$(expr $i + 1)
done

echo Enter the number n:
read n
i=0
while [ $i -lt $n ]
do
echo $i
i=$(expr $i + 1) 
if [ $i -eq 4 ]
then
continue
fi
done
