#!/bin/bash
#
# Install wipri package/command 
# Makes wipri a common Linux command
#
echo "Creating /etc/wipri directory..."
sudo mkdir /etc/wipri
sleep .5
echo "Copying OUI.final into /etc/wipri/OUI.final..."
sudo cp OUI.final /etc/wipri/OUI.final
sleep .5
echo "Copying wipri executable to /usr/bin/wipri for command access..."
sudo cp wipri /usr/bin/wipri
sleep .5
echo "Making wipri an executable command..."
chmod +x /usr/bin/wipri
sleep .5
echo "We are done!"
echo ""
echo "simply type wipri (as root) or sudo wipri to begin using"
