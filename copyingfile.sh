read -p "enter filename to copy" source 
read -p "enter new file (destination): " dest
if [ -f "$source" ]; then
	cp "$source" "$dest"
	if [ $? -eq 0 ]; then
		echo "file copied successfully"
	else 
		echo "error copying file"
	fi
fi
