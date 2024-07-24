#!/bin/bash

# Define your blocklist URLs here
blocklists=(
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/test.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/malicious/AssoEchap/stalkerware-indicators.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/malicious/bigdargon/hostsVN.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/malicious/blocklistproject/malware.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/malicious/DandelionSprout-AntiMalwareHosts.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/malicious/digitalside/latestdomains.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/malicious/disconnectme/simple-malvertising.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/malicious/malware-filter/urlhaus-filter-hosts-online.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/malicious/quidsup/notrack-malware.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/malicious/reported-by-norton.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/malicious/RPiList/Malware.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/malicious/sefinek.hosts1.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/malicious/sefinek.hosts2.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/malicious/Spam404/main-blacklist.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/malicious/suspicious.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/malicious/web-attacks.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/malicious/phishing.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/phishing/blocklistproject/phishing.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/phishing/Dogino/Discord-Phishing-URLs-phishing.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/phishing/phishing.army/blocklist-extended.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/phishing/RPiList/Phishing-Angriffe.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/ransomware/blocklistproject/ransomware.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/crypto/cryptojacking/firebog/Prigent/Crypto.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/crypto/cryptojacking/hoshsadiq/adblock-nocoin-list.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/crypto/cryptojacking/Snota418/Crypto-streams.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/crypto/cryptojacking/zerodot1/CoinBlockerLists-hosts.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/abuse/blocklistproject/hosts.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/abuse/urlhaus.abuse.ch/hostfile.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/fraud/blocklistproject/hosts.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/spam/RPiList/spam-mails.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/spam/stopforumspam/toxic-domains-whole.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/spam/FadeMind/add-Spam.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/piracy/blocklistproject/piracy.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/redirect/blocklistproject/redirect.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/scam/blocklistproject/scam.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/scam/Dogino/Discord-Phishing-URLs-scam.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/scam/durablenapkin/scamblocklist.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/scam/jarelllama/scam.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/scam/sefinek.hosts.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/suspicious/FadeMind/add-Risk.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/suspicious/firebog/w3kbl.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/suspicious/sefinek.hosts.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/porn/StevenBlack/porn.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/porn/blocklistproject/porn.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/porn/chadmayfield/pi-blocklist-porn-all.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/porn/oisd/nsfw.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/porn/sefinek.hosts.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/porn/Sinfonietta/pornography-hosts.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/porn/4skinSkywalker/hosts.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/hate-and-junk/developerdan/extended.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/drugs/blocklistproject/drugs.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/fakenews/StevenBlack/hosts.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/fakenews/marktron/hosts.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/gambling/StevenBlack/hosts.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/gambling/blocklistproject/hosts.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/gambling/MajkiIT/gambling-hosts.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/gambling/sefinek.hosts.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/gambling/TrustPositif/gambling-indonesia.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/dating-services/developerdan/extended.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/dating-services/sefinek.hosts.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/dead-domains/jarelllama/dead-domains.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/useless-websites/jarelllama/parked-domains.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/useless-websites/sefinek.hosts.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/sites/lgbtqplus.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/extensions/deathbybandaid/CountryCodesLists-France.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/extensions/deathbybandaid/ParsedBlacklists-EasyList-Liste-FR.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/extensions/deathbybandaid/ParsedBlacklists-EasyList.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/extensions/FadeMind/add-2o7Net.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/extensions/hagezi/pro.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/extensions/justdomains/adguarddns-justdomains.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/extensions/MajkiIT/adguard-host.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/extensions/MajkiIT/easy-privacy-host.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/extensions/oisd/big.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/extensions/r-a-y/AdguardApps.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/extensions/r-a-y/AdguardMobileSpyware.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/other/polish-blocklists/cert.pl/domains-hosts.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/other/polish-blocklists/MajkiIT/hostfile.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/other/polish-blocklists/PolishFiltersTeam/KADhosts.fork.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/sites/pixiv.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/sites/omegle.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/sites/patreon.txt"
    "https://blocklist.sefinek.net/generated/v1/0.0.0.0/social/tiktok.txt"
)

# Pi-hole adlist file location
adlistFile="/etc/pihole/adlists.list"

# Function to add blocklist to Pi-hole
add_blocklist_to_pihole() {
    url=$1
    if ! grep -q "$url" "$adlistFile"; then
        echo "$url" >> "$adlistFile"
        echo "Added $url to Pi-hole blocklist."
    else
        echo "$url is already in the Pi-hole blocklist."
    fi
}

# Adding blocklists
for blocklist in "${blocklists[@]}"; do
    add_blocklist_to_pihole "$blocklist"
done

# Update Pi-hole's gravity
echo "Updating Pi-hole's gravity..."
pihole -g

echo "Pi-hole blocklists updated successfully."
