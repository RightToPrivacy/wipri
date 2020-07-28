#!/bin/bash
#
# Install wipri package/command 
# Makes wipri a common Linux command
# Optionally makes systemd unique identity at boot (only if yes is answered at end ques)
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
echo ""
sleep .25
echo "Would you like to add wipri to systemd? (yes/no)"
echo "This will start a new unique identity (mac/hostname) for your wifi device at each boot."
read -p "Start a new disinfo identity at each boot (yes/no)?: " boot
if [ $boot == yes ]; then
do
    cp wipri.service /etc/systemd/system/wipri.service
    systemctl daemon-reload
    systemctl enable wipri.service
    systemctl start wipri.service
    echo "WiPri has been added to each boot." 
    echo "To stop/disable issue at boot: systemctl stop wipri && systemctl disable wipri"
    echo "Enjoy!"
done
else

