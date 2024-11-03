
clear
banner HOSPITAL MANAGEMENT
echo "1. View the Database"
echo "2. View Specific Records"
echo "3. Add Records"
echo "4. Delete Records"
echo "5. Exit"
echo "Enter Your Choice"
read choice

case $choice in
    1)
        echo "Viewing the Database..."
        # Command to display the database (assuming a file named database.txt)
        cat database.txt
        ;;
    2)
        echo "Enter the record ID to view:"
        read record_id
        # Command to view specific record (assuming a file named database.txt)
        grep "$record_id" database.txt
        ;;
    3)
        echo "Enter the new record details (format: ID, Name, Age):"
        read new_record
        # Command to add new record to the database
        echo "$new_record" >> database.txt
        echo "Record added successfully."
        ;;
    4)
        echo "Enter the record ID to delete:"
        read record_id
        # Command to delete a specific record (assuming a file named database.txt)
        sed -i "/$record_id/d" database.txt
        echo "Record deleted successfully."
        ;;
    5)
        echo "Exiting the Hospital Management System."
        exit 0
        ;;
    *)
        echo "Invalid choice. Please select a valid option."
        ;;
esac

