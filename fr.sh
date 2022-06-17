for elem in 10 20 3 40 50
do 
   echo $elem
done


for elem1 in $(seq 1 1 10)
do 
   echo $elem1
done


for elem2 in {1..5}
do 
   echo $elem2
done


for elem3 in {1..5..2}
do 
   echo $elem3
done

a=[100 200 300 400 500]
for elem4 in {$a[@]}
do 
   echo $elem4
done


for((ele=0;ele=10))
do
  echo $ele
done
