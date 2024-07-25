# Refined PiHole BlockList & WhiteList

## Last Update Status

- [![Update Pi-hole Blocklist - Sefinek Ads, Analytics & Tracking](https://github.com/spydisec/RefinedPiHoleList/actions/workflows/sefinek_adsblocklist_collective_list.yml/badge.svg)](https://github.com/spydisec/RefinedPiHoleList/actions/workflows/sefinek_adsblocklist_collective_list.yml)
- [![Update Pi-hole Blocklist - Sefinek Danger Sites Only Domains](https://github.com/spydisec/RefinedPiHoleList/actions/workflows/sefinek_dangerlistonlydomains_collective_list.yml/badge.svg)](https://github.com/spydisec/RefinedPiHoleList/actions/workflows/sefinek_dangerlistonlydomains_collective_list.yml)

## About

Refined PiHole List (Currently in Beta)

We are currently working on creating a master list that eliminates duplicate domain names, connecting with Threat Intel, and much more.

Feel free to provide feedback and updates (contribute).

## Automated Install

For a quick and convenient setup, you can install Pi-hole Blocklist URLs and Whitelist Domains by using the following commands:

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
