#!/usr/bin/bash
awk -F ',' '{print $3}' students-list_1023.txt > student-emails.txt

echo "Emails extracted and saved to student-emails.txt"
