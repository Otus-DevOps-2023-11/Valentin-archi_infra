#!/bin/bash
sudo apt-get update &&
sudo apt install mongodb -y &&
sudo systemctl start mongodb && sudo systemctl enable mongodb
STATUS=`systemctl status mongodb`
echo $STATUS
