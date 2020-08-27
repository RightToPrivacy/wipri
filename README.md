### wipri (WiFi Privacy)
### WIFi MAC/Device Disinfo: Address Changer/Hostname randomizer/Device/Signal/location Privacy (derived from my previous maccleaner concept)
### [Without disconnecting you from the internet]
#

### USE:
wipri -d [device] -r [randomizes mac continually changing times/addresses] -a [continually randomize MAC, hostname, signal variations] -m [Static MAC] -i [new MAC identity] -h [rand hostname] -H [restore prev hostname] -s [random signals]

### Features:
-d sets your device 

-r continually randomizes your mac address at randomly generated, continually changing random MAC addresses/times

-m [mac here] sets a mac address of your choice, holds it for remainder of running (checks to ensure firmware does not reset it)

-h change hostname to generic yet unique and completely random hostname. Using a generic base with random extension at the end of it.

-R restore previously held hostname

-H prints help; print out wipri command examples

-i generates a valid OUI based mac identity 

-s txpower randomizer (experimental) randomizes the txpower of your device. This confuses certain WiFI trackers that determine location by signal strength

-a anonymous mode: launch coordinated random changes: each change happens simultaneously: when the mac address changes so does the hostname and txpower/signal. This is intended to simulate new devices. All 3 changes happen simultaneously, at changing, randomized times.

### Simple Setup/Installation for new wipri command on Linux:
sudo bash install.sh
 
That's it. wipri is now installed as a command. install.sh gives the additional option of starting itself at boot
if you answer 'yes' to the question of installing as a systemd service. By default the systemd service will start
a new mac identity on each boot. You can change this by editing the wipri.service file.

Do not forget to include -d [devicename] when issuing commands.

### Additional Info: 

wipri generated mac addresses use valid OUI's (unlike many mac randomizations)
### Why does wipri use valid OUI's? 
One documented method of tracking down a devices' 'real mac address' includes
cancelling/striking out all mac addresses with an invalid/nonexistent OUI preface.
From here one can narrow down from false OUI's. Wipri avoids this issue by using OUI lists.

wipri is argument/flag based, to more easily allow you to incorporate wipri commands into scripts.

Run wipri command anytime you need privacy or (optionally) add it to cron or systemd. 
install.sh will install as a command only, or command + boot (systemd) if you answer 'yes' for the question to do so 

Wipri disables ipv6 by default (ipv6 addresses at times are based on mac address)
If you do not wish to disable ipv6, change value of $turnipv6 variable to 'on'.

