
#!/bin/bash 

#Search for 404 errors within the log file 
#Identify the ip address associated with each 404 error

#Set the log file name 
log_file="web-server-access-logs.log"

#Search the log file for any lines containing 404  and display them
#Extract the ip address from the output of the command
#Ensure that each IP address is unique in the output and counts the number of occurrences
grep -i "404" "$log_file" |cut -d',' -f2 |cut -d'"' -f2 | awk '{print $1}' | sort | uniq -c   

echo "Searching for '404'errors in '$log_file':"

#Count the total number of 404 errors

count=$(grep -ic "404" "$log_file")

#Display the total count of 404 errors
echo "Total '404' errors found: $count"

exit 0
