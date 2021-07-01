### wipri (WiFi Privacy)


### WIFi Device/MAC/Device Metadata Disinfo: Address Changer/Hostname randomizer/Device/Signal/location Privacy (derived from my previous maccleaner concept)


[Without disconnecting you from the internet]




* Privacy For Our Ethical Human Rights *


***NEW: WiFi Access point randomize option (can be installed for boot via install script, or used on demand as wipri command: wipri -d wlan0 -p -A (sets random/valid OUI mac address of Apple/Samsung + simultaneously changes network name/SSID restarting hostapd).




SUPPORT:


https://www.buymeacoffee.com/politictech (public Tutorials/Blog posts and option to donate a coffee if you feel up to it; also private ethical consulting + message me) 		[backup blog: https://politictech.wordpress.com]

BTC: 3QDdTcLwLTPXKMBp5dLUhKJG6KbDxWsYWS

CashApp: https://cash.app/$HumanRightsTech




VIDEO CHANNELS (including guide to wipri, linux, sdr, more):


PEERTUBE: https://tube.tchncs.de/video-channels/privacy__tech_tips/videos
ODYSEE VIDEO/FILE CHANNEL: https://odysee.com/$/invite/@RTP:9		(joining Odysee with my invite link helps me promote content + you earn cryptocurrency (LBRY) for watching videos)
YOUTUBE: https://www.youtube.com/channel/UChVCEXzi39_YEpUQhqmEFrQ​
BRIGHTEON: https://www.brighteon.com/channels/righttoprivacy
BITCHUTE: https://www.bitchute.com/channel/yourprivacytv
BRANDNEWTUBE: https://brandnewtube.com/@RightToPrivacy​ (NEW)



### USE:

wipri -d [device] -r [randomizes mac continually changing times/addresses] -a [continually randomize MAC, hostname, signal variations] -m [Static MAC] -i [new MAC identity] -h [rand hostname] -H [restore prev hostname] -s [random signals]


### Features:

-d sets your device.

-r continually randomizes your mac address at randomly generated, continually changing random MAC addresses/times.

-p Android/iPhone mimic mode: sets single static identity: randomly generated valid mac address of either Apple or Android.

-P Android/iPhone mimic mode: continually changing randomized Samsung/Apple mac address changes- continually changing, at randomized changing times, using continually changing, randomized yet valid OUI Apple/Samsung mac addresses (this setting allows you to appear to WiFi trackers/sniffers [like KISMET] at any given time, as either an Android or iPhone;

-m [mac here] sets a mac address of your choice, holds it for remainder of running (checks to ensure firmware does not reset it)

-h change hostname to generic yet unique and completely random hostname. Using a generic base with random extension at the end of it.

-R restore previously held hostname

-H prints help; print out wipri command examples

-i generates a valid OUI based mac identity

-s txpower randomizer (experimental) randomizes the txpower of your device. This confuses certain WiFI trackers that determine location by signal strength.

-a anonymous mode: launch coordinated random changes: each change happens simultaneously: when the mac address changes so does the hostname and txpower/signal. This is intended to simulate new devices and changing locations. All 3 changes happen simultaneously, at changing, randomized times.

-A WiFi Access Point Randomize: generates a generic yet completely random SSID Network Name and restarts hostapd with this new SSID. Tip: Pair with wipri's static mac settings (i, p, m) to create a new network.


### Simple Setup/Installation for new wipri command on Linux:

First if deciding to install to start at boot (option), edit the wipri flags in wipri.service to your liking. 

sudo bash install.sh
That's it. wipri is now installed as a command. install.sh gives the additional option of starting itself at boot
if you answer 'yes' to the question of installing as a systemd service. By default the systemd service will start
a new mac identity on each boot. You can change this by editing the wipri.service file.
Do not forget to include -d [devicename] when issuing commands.

Tip: if you decide to try the newer -A wifi access point randomize, pair with your choice of static mac flags to create new WiFi network (prevents static databasing such as Wigle)


### Additional Info:

wipri generated mac addresses use valid OUI's (unlike many mac randomizations). See below for why.

If using a Pinephone I suggest selecting -p for home, -P for out. This will mimic an iPhone/Android phone: one of the most common devices around. -p for static (w/mac checking to prevent leaks), -P for continually changing Apple/Android mac at continuously changing times/mac addresses.


### Why does wipri use valid OUI's?

One documented method of tracking down a devices' 'real mac address' includes
cancelling/striking out all mac addresses with an invalid/nonexistent OUI preface.
From here one can narrow down from false OUI's. Wipri avoids this issue by using OUI lists.
wipri is argument/flag based, to more easily allow you to incorporate wipri commands into scripts.
Run wipri command anytime you need privacy or (optionally) or use the install.sh script to install
wipri w/optional new identity changes for each boot. Wipri disables ipv6 by default 
(ipv6 addresses at times are based on mac address) If you do not wish to disable ipv6, change value of 
$turnipv6 variable to 'on'.


<righttoprivacy[at]tutanota.com>
