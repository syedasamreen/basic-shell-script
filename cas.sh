 echo enter the value for a:
 read a
 echo enter the value for b:
 read b
 echo enter 1-addition, 2- subtraction
 read choice
 case $choice in
 1) echo Addition of $a and $b is $(expr $a + $b) ;;
 2) echo Diffrence between $a and $b is $(expr $a - $b) ;;
 esac
