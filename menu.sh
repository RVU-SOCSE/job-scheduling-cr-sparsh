while true
do
    echo ""
    echo "1. Create File"
    echo "2. Copy File"
    echo "3. Move File"
    echo "4. Delete File"
    echo "5. Exit"
    read -p "Enter your choice: " choice

    case $choice in
        1)
            read -p "Enter filename to create: " file
            if [ -f "$file" ]; then
                echo "Error: File already exists!"
            else
                touch "$file" && echo "File created successfully." || echo "Error creating file."
            fi
            ;;

        2)
            read -p "Enter filename to copy: " source
            read -p "Enter new filename (destination): " dest
            if [ -f "$source" ]; then
                cp "$source" "$dest" && echo "File copied successfully." || echo "Error copying file."
            else
                echo "Source file does not exist."
            fi
            ;;

        3)
            read -p "Enter filename to move: " movefile
            read -p "Enter new name/location: " newloc
            if [ -f "$movefile" ]; then
                mv "$movefile" "$newloc" && echo "File moved successfully." || echo "Error moving file."
            else
                echo "File does not exist."
            fi
            ;;

        4)
            read -p "Enter filename to delete: " delfile
            if [ -f "$delfile" ]; then
                rm "$delfile" && echo "File deleted successfully." || echo "Error deleting file."
            else
                echo "File does not exist."
            fi
            ;;

        5)
            echo "Exiting program..."
            break
            ;;

        *)
            echo "Invalid choice! Try again."
            ;;
    esac
done
