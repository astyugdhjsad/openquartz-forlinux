**Instructions for installing Openquartz for Linux**

*This guide assumes that you have installed Openbox, SDDM and X11.*
*For a minimal installation:*
	
	- sudo apt install --no-install-recommends openbox sddm xorg
1.Look at the "alternatives.md" file, and choose which programs you want to install. Pantheon files isn't in the debian repos, and it may not be in your distribution's repos either. A script is inside this GitHub repository that allows you to install Pantheon from source. It uses the apt package manager, and if you're on a different distro, you'll need to modify the script.
2. Install your preferred file manager. I recommend Pantheon files.
3. Install B00merang-Artwork's Mac-OS-X-Lion icon pack.
	
	 - git clone https://github.com/B00merang-Artwork/Mac-OS-X-Lion # Clone the icon pack
	 - sudo mv Mac-OS-X-Lion /usr/share/icons/ # Move contents of icon pack to the icon folder.
	 - sudo apt install lxapperance # Install lxappearance for debian
	 - lxappearance
	 - # After it launches, change the Icon Theme to Mac-OS-X-Lion and click apply. 
	 - # Close lxappearance
	 - sudo /sbin/reboot
 
