This is a series of tweaks to get the trackpad/suspend working on a Dell Chromebook 11 with Ubuntu-Gnome 14.04.1.

GUIDING-SCRIPT.sh moves copies the modified files to the correct place (you can view the file and use guiding-script as a guide also). 
The script is ment to be run as root in a directory with all of the modified configuration files. cros-haswell-modules.sh needs to be run after every kernel upgrade to renable the trackpad. 

Most of what is here is taken from the arch wiki's dell chromebook 11 / chromebook / acer 720 pages. Also, got alot of help from the following google plus thread: https://plus.google.com/+PedroLarroy/posts/6CgQypQukMa

Some of the things in this are hacky workarounds, let me know if there are better ways of doing things.
