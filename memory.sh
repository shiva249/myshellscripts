#!/bin/bash
TO=j.siva13@gmail.com
free_mem=$(free -mt | grep -i total | awk '{print $4}')
if [$free_mem -le 700]
then
 echo "Your RAM size is less than 700"
 echo "Subject:Warning, RAM size is low"|sendmail $TO
-----------------------------------------------------------------
#findout server inventory