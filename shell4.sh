#!/bin/bash
#this scirpt is for conditional check.
#first script for addition, this will run when you pass two values while executing the script.

cmd_line_arguments=$#

if [$cmd_line_arguments -eq 2]
then
  x=$1
  y=$2
  result=((x+y))
  echo "addition of $x and $y is: $result"
fi
-----------------------------------------------------------------------\
#!/bin/bash
#second script.
read -p "Enter start or stop on httpd service: " action
if ["${action}"== "start"]
then
  echo "Starting httpd........"
  sudo systemctl start httpd
  echo "Started httpd"
fi

if [ "{$action}" == "stop"]
then
  echo "Stopping httpd................."
  sudo systemctl stop httpd
  echo "Stopped httpd"
fi
----------------------------------------------------------------------
#seq 1 30 or echo {1..10}--> it will print 1 to 30
#seq 1 2 30 or echo {1..10..2}--> it will print 1,3,5,7....30.
