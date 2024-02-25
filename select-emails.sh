#!/usr/bin/bash
awk -F ',' '{print $3}' students-list_1023.txt | while read -r email; do
    if ! grep -q "^$email$" student-emails.txt; then
        echo "$email" >> student-emails.txt
    fi
done


echo "Emails extracted and saved to student-emails.txt"
