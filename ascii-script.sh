#!/bin/sh

set -e

echo "Step 1/5: Updating package lists (may ask for sudo password)..."
sudo apt-get update -y

echo "Step 2/5: Installing cowsay..."
sudo apt-get install cowsay -y
echo "cowsay installed."

echo "Step 3/5: Generating ASCII art into dragon.txt..."
cowsay -f dragon "Run for cover, I am a dragon!" > dragon.txt
echo "Generated dragon.txt"

echo "Step 4/5: Searching for 'dragon' in dragon.txt..."
if grep -i "dragon" dragon.txt >/dev/null 2>&1; then
	echo "Match found: 'dragon' appears in dragon.txt"
else
	echo "No match for 'dragon' found in dragon.txt"
fi

echo "Step 5/5: Showing contents of dragon.txt and listing directory"
cat dragon.txt
ls -ltra

echo "Done."