read -p "enter filename to move" movefile
read -p "enter new new/location" newloc
if [ -f "$movefile" ]; then
	mv "$movefile" "$newloc"
	if [ $? -eq 0 ]; then
		echo "file moved successfully"
	else
		echo "error moving file"
	fi
else
echo "error: file to move does not exist"
fi
