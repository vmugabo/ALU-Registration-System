#!/bin/bash

# Function to create a student record # Kellen
create_student() {
  echo "Create function ";
}

# Function to view all students  # Kellen
view_students() {
  echo "View function ";
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
