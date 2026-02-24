read -p "enter filename to delete" delfile
if [ -f "$delfile" ]; then
	rm "$delfile"
	if [ $? -eq 0 ]; then
		echo "file deleted successfully"
	else
		echo "error deleting file"
	fi
else
	echo "error: file does not exist"
fi
