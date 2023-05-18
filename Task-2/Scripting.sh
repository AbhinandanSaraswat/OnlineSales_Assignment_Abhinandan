#!/bin/bash
#same query is used here as in task 1
query="SELECT d.NAME AS DEPT_NAME, AVG(s.AMT) AS AVG_MONTHLY_SALARY
FROM departments d
JOIN employees e ON d.ID = e.DEPT_ID
JOIN salaries s ON e.ID = s.EMP_ID
GROUP BY d.NAME
ORDER BY AVG_MONTHLY_SALARY DESC
LIMIT 3;"
hostName="hostName"  #enter your host name
userName="saraswatabhinandan29" #enter your user name for reference here I have entered my user name
nameOfDatabase="nameOfDatabase" #enter your database name where tables employees,departments and salaries are stored 
password="Password" # your mysql password , here I have used a dummy password

#executing the sql query using bash 
ans=$(mysql -h "$hostName" -u "$userName" -p"$password" -D "$nameOfDatabase" -e "$query")

# Check if the query executed successfully
if [ $? -eq 0 ]; 
then
  echo "ans"
else
  echo "error"
fi
#to execute this file we have to give executable permission using chmod command.