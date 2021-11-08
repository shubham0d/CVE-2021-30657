# CVE-2021-30657
A simple POC for CVE-2021-30657 affecting MacOS
## Vulnerability detail
A vulnerability in `syspolicyd` allows specially crafted application bundle downloaded from internet to <br/>
bypass foundational macOS security features such as File Quarantine, Gatekeeper, and Notarization. <br/>
Armed with this capability attackers could hack macOS systems with a simple user (double)-click.

## Usage
Put your desireable shell script in `payload.sh`.<br/>
Execute `setup.sh` <br/>
This will generate a bait.dmg that will contain our malicious app bundle.<br/>
Share it to the victim through internet. <br/>
When victim will double click on app icon after mounting dmg, it will execute the payload script without any gatekeeper's checks.

## Affected version
* macOS Big Sur < 11.3
* Security Update Catalina < 2021-002

## Technical details
https://objective-see.com/blog/blog_0x64.html
