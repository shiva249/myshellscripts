#select loop provides an easy way to creat a numbered menu from which users can select options.
#!/bin/bash

select opt in addition and subtraction Quit
do
  case $opt in
  Addition)
    read -p "enter num1: " num1
    read -p "enter num2: " num2
    echo "addition of $num1 and $num2 is: $((num1+num2))"
    ;;
  subtraction)
    read -p "enter num1: " num1
    read -p "enter num2: " num2
    echo "subraction value of $num1 and $num2 is: $((num1-num2))"
    ;;
  Quit)
    echo "Thank you"
    exit 0
    ;;
*)
    echo "Invalid option"
    ;;

esac
done