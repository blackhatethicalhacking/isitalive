# IS IT ALIVE?

<p align="center">
<a href="https://www.blackhatethicalhacking.com"><img src="https://pbs.twimg.com/profile_banners/770898848197795840/1650879597/1500x500" width="600px" alt="BHEH"></a>
</p>
<p align="center">
<a href="https://www.blackhatethicalhacking.com"><img src="https://www.blackhatethicalhacking.com/wp-content/uploads/2022/06/BHEH_logo.png" width="300px" alt="BHEH"></a>
</p>

<p align="center">
This tool will resolve a list of Domains, IPs, Hosts, URLs and save the results for valid/invalid fast by probing them! by Black Hat Ethical Hacking
</p>

# What is isitalive.sh?

This tool is designed for Bug Bounty Hunters, Pentesters & Red teams with speed in mind. When performing Recon, depending on the tools you will use, even if passive or active techniques are used, you will end up with huge lists of IP addresses, Hosts, URLs, and Subdomains. But as we know Bug Bounty is all about time management and working smart. From these hosts/Urls/IPs especially if they are huge, we know that many are either from the Wayback machine, or any source, that often is not alive or no longer available, so using this tool, on any of these will immediately probe them and save them into two files, Valid and Invalid so that you can work more efficiently and never waste time on hosts that are no longer valid!


# Installation

`git clone https://github.com/blackhatethicalhacking/isitalive.git`

`cd isitalive`

`chmod +x isitalive.sh`

`isitalive.sh -h`

`pip install lolcat`

# Instructions

All you have to do when you run this tool is provide it with a list of:

- IP addresses
- Hosts
- Subdomains
- URLs

This way:

`isitalive.sh target.txt`

It will then start probing and saving in realtime the results under **output** with Valid and Invalid files.

# Screenshots

**Main Menu**

![alt text](https://i.ibb.co/jDqZr9x/Screenshot-2022-08-12-at-1-57-04-PM.png)

# Compatibility

Tested on Kali Linux, Parrot OS, MacOS

# Disclaimer

This tool is provided for educational and research purpose only. The author of this project are no way responsible for any misuse of this tool. 
We use it to test under NDA agreements with clients and their consents for pentesting purposes and we never encourage to misuse or take responsibility for any damage caused !

# Support

If you would like to support us, you can always buy us coffee(s)! :blush:

<a href="https://www.buymeacoffee.com/bheh" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/default-orange.png" alt="Buy Me A Coffee" height="41" width="174"></a>



