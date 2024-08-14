# Bash-Script-Practice

Directory Check
```
#!/bin/bash

#Define the name of the directory 

directory_name="backup"


#Check if the directory exists

if [ -d $directory_name] then;

#Create the directory 

mkdir "backup"

echo "Directory '$directory_name' created."

else 

echo "Directory '$directory_name' already exists."

fi

```
Permission check 
```
#!/bin/bash

file="~/weather.sh"

#Check if the  file is readable  

if [ -r "$file" ]; then
   readable="Yes"
else
   readable="No"

fi 


#Check if the file is writable

if [ -w "$file" ]; then 
   readable="Yes"
else
   readable="No"

fi 

#Check if the file is executable 

if [ -x "$file"]; then 
    executable="Yes"
else 
    executable="No"

fi 
