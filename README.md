# Here some tutorial:
The script is designed to check which pages are responding to the request. Those which are active can be pressed.

What you need is fping. Ubuntu and similar:

`sudo apt-get install fping`

Download the script, open a terminal in the folder where you downloaded it and change the run permissions:

`chmod +x check_sites.sh`

The script is ready to run. Some systems allow you to run fprint without sudo others do not. Try this:

`./check_sites.sh`

If it doesn't work:

`sudo ./check_sites.sh`
 
