#!/usr/bin/env bash
while IFS= read -r line; do ./r-u-flooded $line 1 1 && sleep 1; done < <(nmap -sL -n $(shuf ip-list.txt) | awk '/Nmap scan report/{print $NF} ')
