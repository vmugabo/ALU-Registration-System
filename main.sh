#!/bin/bash

# Function to create a student record # Kellen
create_student() {
echo "enter student's email"
read studentemail
echo "enter student age"
read studentage
echo "enter the student's ID"
read studentid
echo "$studentid, $studentage, $studentemail" >> students-list_1023.txt
echo "Students records  recorded successfully"


}

# Function to view all students  # Kellen
view_students() {
echo "students records:"
cat students-list_1023.txt

}

# Function to delete a student record # Anselme
delete_student() {
  echo "Delete function ";
}

# Function to update a student record # Anselme
update_student() {
  echo "Update function ";
}

# Main menu
while true; do
    echo " ======== NegPod 7 Student Management System ======= "
    echo "What do you want to achieve:"
    echo "1. Create student record"
    echo "2. View all students"
    echo "3. Delete a student record"
    echo "4. Update a student record"
    echo "5. Exit"
    read choice

    case $choice in
        1) create_student ;;
        2) view_students ;;
        3) delete_student ;;
        4) update_student ;;
        5) echo "Exiting the application." ; exit ;;
        *) echo "Invalid choice. Please choose again." ;;
    esac
done
