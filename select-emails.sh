#!/usr/bin/bash
awk -F '.com' '{print $1 ".com"}' students-list_1023.txt >> student-emails.txt
