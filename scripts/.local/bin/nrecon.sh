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

# Minimum rate check
while true; do
        echo -ne "\n[+] Template to use (1-5): "
        read -r minrate
        dd if=/dev/null of=/dev/tty bs=1 >&/dev/null

        if [[ "$minrate" =~ ^[1-5]$ ]]; then
                break
        else
                echo "[!] Invalid input! Enter a valid number."
        fi
done

# Nmap scans
echo -e "\n[+] Performing the nmap scan..."
sudo nmap -p- --open -T"$minrate" $(tg check) -n -Pn -oG ports -vvv

echo -e "\n\n[+] Performing script scan..."
nmap -p$(grep -oP '\d{1,5}/open' ports | sed 's#/open##' | paste -sd,) -sCV $(tg check) -Pn -oN targeted

exit 0
