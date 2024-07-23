#!/bin/bash

# Function to whitelist a domain
whitelist() {
    pihole -w "$1"
}

# Google services
google_domains=(
    "clients4.google.com"
    "clients2.google.com"
    "android.clients.google.com"
    "reminders-pa.googleapis.com"
    "firestore.googleapis.com"
    "gstaticadssl.l.google.com"
    "redirector.gvt1.com"
)

# Microsoft services
microsoft_domains=(
    "www.msftncsi.com"
    "outlook.office365.com"
    "products.office.com"
    "c.s-microsoft.com"
    "i.s-microsoft.com"
    "login.live.com"
    "login.microsoftonline.com"
    "g.live.com"
    "dl.delivery.mp.microsoft.com"
    "geo-prod.do.dsp.mp.microsoft.com"
    "displaycatalog.mp.microsoft.com"
    "sls.update.microsoft.com.akadns.net"
    "fe3.delivery.dsp.mp.microsoft.com.nsatc.net"
    "tlu.dl.delivery.mp.microsoft.com"
    "msedge.api.cdp.microsoft.com"
    "clientconfig.passport.net"
    "v10.events.data.microsoft.com"
    "v20.events.data.microsoft.com"
    "client-s.gateway.messenger.live.com"
    "activity.windows.com"
    "xbox.ipv6.microsoft.com"
    "device.auth.xboxlive.com"
    "title.mgt.xboxlive.com"
    "xsts.auth.xboxlive.com"
    "title.auth.xboxlive.com"
    "ctldl.windowsupdate.com"
    "attestation.xboxlive.com"
    "xboxexperiencesprod.experimentation.xboxlive.com"
    "xflight.xboxlive.com"
    "cert.mgt.xboxlive.com"
    "xkms.xboxlive.com"
    "def-vef.xboxlive.com"
    "notify.xboxlive.com"
    "help.ui.xboxlive.com"
    "licensing.xboxlive.com"
    "eds.xboxlive.com"
    "www.xboxlive.com"
    "v10.vortex-win.data.microsoft.com"
    "settings-win.data.microsoft.com"
    "officeclient.microsoft.com"
    "ipv6.msftncsi.com"
)

# Captive portal tests
captive_portal_domains=(
    "connectivitycheck.android.com"
    "clients3.google.com"
    "connectivitycheck.gstatic.com"
)

# Spotify
spotify_domains=(
    "spclient.wg.spotify.com"
    "apresolve.spotify.com"
    "api-tv.spotify.com"
)

# NVIDIA GeForce Experience
nvidia_domains=(
    "gfwsl.geforce.com"
)

# Moto phones OS updates
moto_domains=(
    "appspot-preview.l.google.com"
)

# Epic Games Store
epic_domains=(
    "tracking.epicgames.com"
)

# Whitelist all domains
for domain in "${google_domains[@]}" "${microsoft_domains[@]}" "${captive_portal_domains[@]}" "${spotify_domains[@]}" "${nvidia_domains[@]}" "${moto_domains[@]}" "${epic_domains[@]}"; do
    whitelist "$domain"
done
