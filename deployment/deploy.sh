#!/bin/bash

# Load the helper script
source deploy_helper.sh

# Check if any arguments were passed
if [ "$#" -eq 0 ]; then
    echo "Usage: ./deploy.sh <project_name1> <project_name2> ..."
    exit 0
fi

# Loop through each provided project and deploy it
for project in "$@"; do
    if [[ -f "projects/$project.conf" ]]; then
        deploy_project "$project"
    else
        echo "Configuration file for project $project not found!"
    fi
done


rm  "C:\Users\IQ-Ajay\Downloads\*.jar" -Force
