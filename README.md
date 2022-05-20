### wipri (WiFi Privacy) - Privacy Disinfo Tool


### WIFi Device/MAC/Device Metadata Disinfo: Address Changer/Hostname randomizer/Device/Signal/location Privacy (derived from my previous maccleaner concept)


[Without disconnecting you from the internet]

---

##### * NEW *: Thanks to popular request, wipri-list allows you to create random yet valid OUI lists, select random mac from this list and set it, remove etc 
##### (you can install single 'quasi-perm' mac by choosing wipri-list -s command as your answer on initial install.sh 'boot' question (it's easy and install.sh automatically creates your first valid mac address in wipri-list's list during first run!)

---

##### Have great ideas you want to see? file an issue or contact me!

---

#### UPDATING WIPRI: IS SIMPLE! 

    Download latest wipri here or at Gitea Onion (address below)
    
    re-run the install.sh, to overwrite your old wipri with new features!
    
---

* Privacy For Our Ethical Human Rights *

---

Learn More On Usage With Screenshots/video: https://politictech.wordpress.com/2021/12/18/wifi-privacy-with-wipri-any-linux-device/

+ Learn More + About WiPri + Why It Exists On This Video + diagram posts: https://www.buymeacoffee.com/politictech/wireless-privacy-tips-what-about-hearing-aids

---

#### Latest WiPri Updates first appear on Wipri's Tor Hidden Gitea Service (create an acct to make or contrib your own Wiki's, books, anon access, etc!): http://gg6zxtreajiijztyy5g6bt5o6l3qu32nrg7eulyemlhxwwl6enk6ghad.onion/RightToPrivacy/WiPri/ (view in Tor Browser)

---

### USE:

wipri -d [device] -r [randomizes mac continually changing times/addresses] -a [continually randomize MAC, hostname, signal variations] -m [Static MAC]     -i [new MAC identity] -h [rand hostname] -H [restore prev hostname] -s [random signals] -A [randomized WiFi Network SSID Change: optional netcat           notification of new names- add ip address to $ncnotify]

---

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
	[for -A above, a netcat notification is optional; be sure to check variables and change $ncnotify variable value to 'on' or 'off': may add flag for this in an update]
	
---

### Quick Start: Automate Installation + Boot / Command Option By Running install.sh

    sudo bash install.sh

(install.sh will install files exactly where they need to be. 

Next, install.sh asks if you would like wipri to run automatically at boot (early to prevent any leaks). And you can choose whatever wipri or wipri-list command you would like to run at boot.)

That's it. wipri is now installed as a command. 

install.sh offers the additional option of starting a wipri or wipri-list flag / command at boot
(if you answer 'yes' to the question of installing as a systemd service). 

Do not forget to include -d [devicename] when issuing commands.

---

Tip: if you decide to try the newer -A wifi access point randomize, pair with your choice of static mac flags to create new WiFi network (prevents static databasing such as Wigle)
For the above random ssid option I added optional netcat notification and will expand on this later. Post a question if you have one.
	
---
	
DISABLING WIPRI AT BOOT (IF YOU INSTALLED AND WISH TO STOP IT/DISABLE IT)


### Disabling WiPri Boot (Once installed) Is Very Easy:

    sudo systemctl stop wipri    (this stops current wipri process in systemd)
    sudo systemctl disable wipri (this DISABLES WIPRI from next boot - use 'enable' to re-enable)

---

### Additional Info:

wipri generated mac addresses use valid OUI's (unlike many mac randomizations). See below for why.

If using a Linux phone / device, I suggest selecting -p for home, -P for out. To mimic an iPhone/Android phone: one of the most common devices around. -p for static (w/mac checking to prevent leaks), -P for continually changing Apple/Android mac at continuously changing times/mac addresses.
For even more broad randomization use -r for continuously changing randomization at continuously changing randomized times (all brands) or -i for static random mac identity

---

### Why does wipri use valid OUI's?

One documented method of tracking down a devices' 'real mac address' includes
cancelling/striking out all mac addresses with an invalid/nonexistent OUI preface (common problem with other built in mac randomization options).

From here one can narrow down from false OUI's. Wipri avoids this issue by using OUI lists (all brands).
wipri is argument/flag based, to more easily allow you to incorporate wipri commands into scripts.
Run wipri command anytime you need privacy or (optionally) or use the install.sh script to install
wipri w/optional new identity changes for each boot. Wipri disables ipv6 by default 
(ipv6 addresses at times are based on mac address) If you do not wish to disable ipv6, change value of 
$turnipv6 variable to 'on'.

Another concern I've had with some other mac address randomization options is the commonly used "keep the real OUI".

I understand the WHY behind this method. But personally don't want to follow it for my own devices. Example: what if in the history of a device, your new install were to leak the permanent mac somewhere?

If the permanent OUI is being used, and logged, how might this become a risk of linking the 'spoofed' to the permanent (same REAL hardware OUI - narrows it down quite a bit)

I layout concerns here on some of why I chose what I did for WiPri: https://youtu.be/291uohokEOQ?t=166

---

### ❤️ TUTORIALS + SUPPORT:

☕ READ TUTORIALS / BUY ME A COFFEE: https://buymeacoffee.com/politictech (+ current btc addy, most posts completely public or will become public)

❤️ MONERO: 48qtspi5En44mJZLeiMoHYFEmuJfQYb5DLQxLDr7d1NXc53XaAvoT8PS3wBrhEc3VY1wxu5Rgw6oKBYgahpSAYnpHntbQNM

❤️ CashApp: https://cash.app/$HumanRightsTech

📝 TUTORIAL POSTS: https://buymeacoffee.com/politictech/posts

---

### PUBLIC SERVERS

GITEA ONION (ANONYMOUS GIT SERVICE: ADD YOUR PROJECTS OR CONTRIBUTE!): http://gg6zxtreajiijztyy5g6bt5o6l3qu32nrg7eulyemlhxwwl6enk6ghad.onion/explore/repos

📝 Blog Mirror: https://politictech.wordpress.com (see https://buymeacoffee.com/politictech/posts for organized category posts + searchable titles)

🔐 💾 ANON PASTEBIN (PRIVATEBIN 🧅 TOR SERVICE): http://ikgybpx6kltqcnox3tv3zhw7zw3ig7f3jfjo6ypojpmoys7q4hcf2gid.onion/paste/ ('burn after reading', self destruct options, AES 256bit encrypted "zero knowledge-snark" (not even host can read pastes), password protection. For Community Use (ethical usage only)

---

### VIDEO CHANNELS (including guide to wipri, linux, sdr, more):


PEERTUBE: https://tube.tchncs.de/video-channels/privacy__tech_tips/videos

ODYSEE VIDEO/FILE CHANNEL: https://odysee.com/$/invite/@RTP:9		(joining Odysee with my invite link helps me promote content + you earn cryptocurrency (LBRY) for watching videos)

YOUTUBE: https://www.youtube.com/channel/UChVCEXzi39_YEpUQhqmEFrQ​

BRIGHTEON: https://www.brighteon.com/channels/righttoprivacy

BITCHUTE: https://www.bitchute.com/channel/yourprivacytv

BRANDNEWTUBE: https://brandnewtube.com/@RightToPrivacy​ (NEW)

---


#### CONTACT / INQUIRY
<righttoprivacy[at]tutanota.com>

---
