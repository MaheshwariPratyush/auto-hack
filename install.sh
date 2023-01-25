#!/bin/bash

echo "Before Running This Script, Please Ensure That Metasploit Is Successfully Installed On Your System"
echo "Proceed With Install Of The Script (yes/no) ?"
read $IN

if [[ $IN == "yes" ]]; then
  sudo su
  chmod +x hack
  cp hack /bin
  cp hack /usr/bin
  cp hack usr/local/bin
  echo "Script Installed Successfully, Just Run hack into your terminal"

fi

if [[ $IN == "no" ]]; then
  exit;

fi
