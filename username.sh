#!/bin/bash
# zip.sh — validate each line of a file containing ZIP codes

echo "Usernames must be between 3 and 12 characters long,"
echo "start with a lowercase letter, and contain only"
echo "lowercase letters, digits, and underscores."

read -rp "Enter your username:" username
valid="false"
while [[ "$valid" == "false" ]]; do
        if [[ ! "$username" =~ ^[a-z] ]]; then
                read -rp "Username does not start with a lowercase letter. Please try again:" username
        elif [[ ${#username} -lt 3 ]]; then
                read -rp "Username is less than three characters long. Please try again:" username
        elif [[ ${#username} -gt 12 ]]; then
                read -rp "Username is more than 12 characters long. Please try again:" username
        elif [[ "$username" =~ [^a-z0-9_] ]]; then
                read -rp "Username contains invalid characters. Please try again:" username
        else
                echo "Thank you. Have a great day!"
                valid="true"
        fi
done