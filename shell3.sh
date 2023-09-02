#!/bin/bash
#get the output of the httpd status
status=$(systemctl status httpd | awk 'NR==3 {print $2}')
echo "The current status of httpd is: $status"
--------------------------------------------------------------------
#with read commamd

#!/bin/bash
read -p "enter is your web server: " web_server
status=$(systemctl status $web_server | awk '{print $2}')
echo "status of $web_server is: $status"
------------------------------------------------------------------------------
#!/bin/bash

#execute below script to print message 10 time.

for each in $(seq 1 10)
do
 echo "Welcome"
done
--------------------------------------------------------------
Topic : Shell Scripting

Interviewer: Write a shell script to create a random password of a specified length of 16.

Ans :

#!/bin/bash
PASSWORD_LENGTH=16
PASSWORD=$(openssl rand -base64 48 | tr -d /=+ | cut -c1-$PASSWORD_LENGTH)
echo "Random Password: $PASSWORD"