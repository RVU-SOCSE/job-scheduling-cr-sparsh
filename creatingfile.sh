#!bin/bash
read -p "enter filename to create:" file
if [ -f "$file" ]; then
	echo "error: file aready exists!"
else
	touch "$file"

	if [ $? -eq 0 ]; then
		echo "file '$file' created successfully"
	else
	echo "error creating file"
fi
fi
