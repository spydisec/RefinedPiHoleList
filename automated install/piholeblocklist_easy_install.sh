#!/bin/bash

# Define your blocklist URLs here
blocklists=(
    "https://raw.githubusercontent.com/spydisec/RefinedPiHoleList/main/pihole_oisd_nsfw.txt"
    "https://raw.githubusercontent.com/spydisec/RefinedPiHoleList/main/pihole_oisd_big.txt"
    "https://raw.githubusercontent.com/spydisec/RefinedPiHoleList/main/pihole_collective_notrack_malware.txt"
    "https://raw.githubusercontent.com/spydisec/RefinedPiHoleList/main/pihole_collective_digitalside_osint.txt"
    "https://raw.githubusercontent.com/spydisec/RefinedPiHoleList/main/pihole_RPi_Malware.txt"
    "https://raw.githubusercontent.com/spydisec/RefinedPiHoleList/main/sefinekBlockList/pihole_bl_sefinek_ads_tele_analytics.txt"
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
