#!/bin/bash

# This script manages the test hotspot

HS_INTERFACE="eth0"
STATUS_PATH="/var/run/hotspot.status"

get_status() {
    # Quoting variable expansions
    if [ -f "$STATUS_PATH" ]; then
        cat "$STATUS_PATH"
    else
        echo "Status file not found"
    fi
}

configure_hotspot() {
    # Proper quoting
    ip link set "$HS_INTERFACE" up
    echo "Hotspot configured on $HS_INTERFACE"
}

get_status
configure_hotspot
