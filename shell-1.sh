free -m | awk '{print $4}' #it will print the free space which is fourth colomn from free -m command output.
echo "$(ls)" or echo $(ls) #it will show the list of files in current directory.
echo $(ls) #it will show the output in single line.
echo "$(ls)" #it will show the output in colomns.