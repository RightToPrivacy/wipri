#!/bin/bash
#
# Install wipri package/command 
# Makes wipri a common Linux command
# Optionally makes systemd unique identity at boot (only if yes is answered at end ques)
#
# ***Requirements***: 
# root privileges, iw command (for certain settings/checking mac), ip command, bash.
# (Most Linux systems have everything by default)
#
echo "Creating /etc/wipri directory..."
sudo mkdir /etc/wipri
sleep .5
echo "Copying OUI files into /etc/wipri..."
sudo cp phone.OUI /etc/wipri/phone.OUI
sudo cp OUI.final /etc/wipri/OUI.final
sleep .5
echo "Copying wipri executable to /usr/bin/wipri for command access..."
sudo cp wipri /usr/bin/wipri
sleep .5
echo "Making wipri an executable command..."
chmod +x /usr/bin/wipri
sleep .5
echo "We are done here!"
echo ""
echo "Simply type wipri (as root) or sudo wipri to begin using/receive help."
echo ""
sleep .25
echo "Would you like to additionally have wipri change your identity at boot (systemd)?"
echo "This will start a new uniquely generated identity (mac/hostname) for your wifi device at each boot."
read -p "Start a new disinfo identity at each boot (yes/no)?: " boot
if [ $boot == yes ]; then
    cp wipri.service /etc/systemd/system/wipri.service
    systemctl daemon-reload
    systemctl enable wipri.service
    systemctl start wipri.service
    echo "WiPri has been started/added new identity at each boot." 
    echo "To stop/disable issue at boot: systemctl stop wipri && systemctl disable wipri."
    echo "Enjoy your right to privacy [Declared a basic right in United Nations Declaration Of Human Rights]."
else 
    "You did not select 'yes' for starting at boot. Thus we are exiting. wipri installed as command only."
fi
