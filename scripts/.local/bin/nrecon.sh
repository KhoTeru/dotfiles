#!/bin/bash

error_exit() {
        echo "[!] $1 Exiting..." >&2
        exit 1
}

trap 'echo '\''[!] Ctrl + C detected! Exiting...'\''; exit 1' SIGINT

# Program check
command -v nmap >/dev/null 2>&1 || error_exit "Nmap is missing!"
command -v tg >/dev/null 2>&1 || error_exit "tg is missing!"

# Valid target check
if [ "$(tg check)" = "No target" ]; then
        error_exit "No target available / no valid target!"
fi

echo "[*] nmap Recon (nrecon.sh)"

# Nmap scans
echo -e "\n[+] Performing the nmap scan..."
sudo nmap -p- --open -T4 --min-rate 10000 $(tg check) -n -Pn -oG tcpPorts -vvv

echo -e "\n[+] Performing script scan..."
nmap -p$(grep -oP '\d{1,5}/open' tcpPorts | sed 's#/open##' | paste -sd,) -sCV $(tg check) -Pn -oN targeted

echo -e "\n[+] Performing UDP scan..."
sudo nmap --top-ports 100 -T4 --min-rate 10000 -sU $(tg check) -n -Pn -oN udpPorts -vvv

bat -l ruby targeted

exit 0
