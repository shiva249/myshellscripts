#!/bin/bash
free -m | awk '{print $4}' #it will print the free space which is fourth colomn from free -m command output.
echo "$(ls)" or echo $(ls) #it will show the list of files in current directory.
echo $(ls) #it will show the output in single line.
echo "$(ls)" #it will show the output in colomns.
x=55
y=8
z=33
a=67

#below command will print the output in single.
echo "the value of x is: $x the value of y is: $y the value of z is: $z the value of a is: $a"
#below command will print the output in each line.
echo -e "the value of x is: $x \nthe value of y is: $y \nthe value of z is: $z \nthe value of a is: $a"
#default value of varible is empty value.
ls > ls.txt #to store ls output in ls.txt file.
date +"%Y-%m-%d" #output will be 2023-08-27
\n #using to print in next line from where it is used
\b #using to remove one space back from where it is used
\t #using to create horizontal tab spaces like tab
\r #this will over write on first position from the same line.
#example 
echo -e "this is first line \rhello" #hello will be replace with this and output is "hello is first line"
\v #using for vertical tab
echo -e "welcome\vto\vshell\vscript"
$? #it will give the previously executed command status.