#!/bin/bash
#
# Install wipri package/command 
# Makes wipri a common Linux command
# Optionally makes systemd unique identity at boot (only if yes is answered at end ques)
#
# Public Blog/Tutorials and Support Options + more: https://buymeacoffee.com/politictech
# WiPri Guide: https://www.buymeacoffee.com/politictech/wifi-privacy-with-wipri-any-linux-device
#

wpcmd="wipri -d wlan0 -p"	# Example command for boot, set on question during running
wpservicefile='wipri.service'	# wipri.service file location for the boot section


echo "Creating /etc/wipri directory..."
sudo mkdir /etc/wipri
sleep .5
sudo touch /etc/wipri/maclist
echo "Copying OUI files into /etc/wipri..."
sudo cp final.OUI /etc/wipri
sudo cp phone.OUI /etc/wipri
sleep .5
echo "Copying wipri executable to /usr/bin/wipri for command access..."
sudo cp wipri /usr/bin/wipri
sudo cp wipri-list /usr/bin/wipri-list
sleep .5
echo "Making wipri an executable command..."
chmod +x /usr/bin/wipri
chmod +x /usr/bin/wipri-list 
sleep .5
echo -e "We are done installing the command!\n" && sleep .5
echo -e "Now creating first wipri-list mac address..." && sleep .5
sudo wipri-list -a || echo "failed to create first wipri-list mac. Run wipri-list -a after install to create manually..." && sleep .5 #> /dev/null
echo -e "wipri-list has first quasi-permanent mac address option" && sleep .5
echo -e "wipri-list is a new optional command for either single mac address or as many as you make in the list\n" && sleep .5
echo -e "Running command wipri-list will display examples...\n continuing install..." && sleep .5
echo ""
echo "Simply type wipri -H to receive help."
echo ""
sleep .25
echo "Would you like to additionally have wipri change your identity at boot (systemd)?"
echo "This will start a new uniquely generated identity (mac/hostname) for your wifi device at each boot."
read -p "Start a new disinfo identity at each boot (yes/no)?: " boot
if [ $boot == yes ]; then

    echo "(the following question below can use commands from wipri or wipri-list adding them to boot)"
    read -p "What wipri mac address command would you like to start at boot? (ex: wipri -d wlan0 -p): " wpcmd
    sed -i "13s/.*/ExecStart=$wpcmd/" $wpservicefile
    sed -i "14s/.*/ExecReload=killall -9 wipri;$wpcmd/" $wpservicefile
    cp wipri.service /etc/systemd/system/wipri.service
    systemctl daemon-reload
    systemctl enable wipri.service
    systemctl start wipri.service
    echo "WiPri has now been started/added new identity at each boot." 
    echo "Remember not to run conflicting mac address changes at same time as each device only carries 1 mac address at a time!"
    echo "To stop/disable issue at boot: systemctl stop wipri && systemctl disable wipri."
    echo "Enjoy your right to privacy [Declared a basic right in United Nations Declaration Of Human Rights]."
else 
    echo "You did not select 'yes' for starting at boot. Thus we are exiting. wipri installed as command only."
fi
