#!/bin/bash

# Function to create a student record # Kellen
create_student() {
echo "enter student's email"
read studentemail
echo "enter student age"
read studentage
echo "enter the student's ID"
read studentid

printf "%-20s\t%-10s\t%-10s\n" "$studentemail", "$studentage", "$studentid" >> students-list_1023.txt

echo "Students records  recorded successfully"


}

# Function to view all students  # Kellen
view_all_students() {
    echo "List of all students:"
    echo "+-----------------------------+-----+----------------------------+"
    echo "| Email                       | Age | ID                         |"
    echo "+-----------------------------+-----+----------------------------+"
    awk -F ',' '{printf "%-20s\t%-10s\t%-10s\n", $1, $2, $3}' students-list_1023.txt
    echo "+-----------------------------+-----+----------------------------+"
}

# Function to delete a student record # Anselme
delete_student() {
  echo "Enter student ID to delete:"
  read id
  sed -i "/\b$id\b/d" ./students-list_1023.txt
  echo "Student record deleted successfully."
}

# Function to update a student record # Anselme
update_student() {
  echo "Enter student ID to update:"
  read id
  echo "Enter updated email:"
  read email
  echo "Enter updated age:"
  read age
  sed -i "s/\b$id\b/$email $age $id/" students-list_1023.txt
  echo "Student record updated successfully."
}

# Main menu
while true; do
    echo " ======== NegPod 7 ALU Student Registration System ======= "
    echo " ==================Select your action: ==================="
    echo "1. Create student record"
    echo "2. View all students"
    echo "3. Delete a student record"
    echo "4. Update a student record"
    echo "5. Exit"
    read choice

    case $choice in
        1) create_student ;;
        2) view_all_students ;;
        3) delete_student ;;
        4) update_student ;;
        5) echo "Exiting the application." ; exit ;;
        *) echo "Invalid choice. Please try again Option 1-5." ;;
    esac
done
