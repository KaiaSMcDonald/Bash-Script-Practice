# Bash-Script-Practice


#!/bin/bash

#Define the name of the directory 

directory_name="backup"


#Check if the directory exists

if [$directory_name] then;

#Create the directory 

mkdir "backup"

echo "Directory '$directory_name' created."

else 

echo "Directory '$directory_name' already exists."

fi
