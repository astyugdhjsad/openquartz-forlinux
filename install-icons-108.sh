echo 'Download the "osx108.tar.gz" file, and place it in this directory.'
echo 'This script will attempt to install lxappearance for debian. You will need to modify the script if you are using a different distribution'
read -p "Press enter to continue..."
cp osx108.tar.gz /usr/share/icons/
tar -xf /usr/share/icons/osx108.tar.gz
rm /usr/share/icons/osx108.tar.gz
