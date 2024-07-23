# Refined PiHole BlockList & WhiteList

## Last Update Status
- ![Update Pi-hole Blocklist - RPiListMalware](https://github.com/spydisec/RefinedPiHoleList/actions/workflows/adb2pihole_RPiListMalware.yml/badge.svg) [](https://github.com/spydisec/RefinedPiHoleList/actions/workflows/adb2pihole_RPiListMalware.yml)
- ![Update Pi-hole Blocklist - BIG-oisd](https://github.com/spydisec/RefinedPiHoleList/actions/workflows/adb2pihole_oisdbig.yml/badge.svg) [](https://github.com/spydisec/RefinedPiHoleList/actions/workflows/adb2pihole_oisdbig.yml)
- ![Update Pi-hole Blocklist - NoTrack Malware Blocklist](https://github.com/spydisec/RefinedPiHoleList/actions/workflows/master_notracklist-malware.yml/badge.svg) [](https://github.com/spydisec/RefinedPiHoleList/actions/workflows/master_notracklist-malware.yml)
- ![Update Pi-hole Blocklist - nsfw](https://github.com/spydisec/RefinedPiHoleList/actions/workflows/adb2pihole_nsfw.yml/badge.svg) [](https://github.com/spydisec/RefinedPiHoleList/actions/workflows/adb2pihole_nsfw.yml)
- ![Update Pi-hole Blocklist - OSINT.digitalside.it](https://github.com/spydisec/RefinedPiHoleList/actions/workflows/master_osintlist.yml/badge.svg) [](https://github.com/spydisec/RefinedPiHoleList/actions/workflows/master_osintlist.yml)

## About
Refined PiHole List (Currently in Beta)

We are currently working on creating a master list that eliminates duplicate domain names, connecting with Threat Intel, and much more.

Feel free to provide feedback and updates (contribute).

## Automated Install

For a quick and convenient setup, you can install Pi-hole Blocklist URLs and Whitelist Domains by using the following commands:

### BlockList URLs Installation
```bash
curl -sSL https://raw.githubusercontent.com/spydisec/RefinedPiHoleList/main/automated%20install/piholeblocklist_easy_install.sh | bash
```
### Whitelist Domain Installation
```bash
curl -sSL https://raw.githubusercontent.com/spydisec/RefinedPiHoleList/main/automated%20install/piholeblocklist_easy_install.sh | bash
```

## TODO
- [ ] Cleanup the code! (most of this was written as PoC)
- [ ] Update Pihole whitelist script
- [ ] Add installation script for automated install
- [ ] Add additional lists to combine into one mega list
- [ ] Add instructions to host the list on the pi-host itself
