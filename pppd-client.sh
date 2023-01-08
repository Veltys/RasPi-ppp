#!/bin/sh

# Title         : pppd-client.sh
# Description   : Initializes the ppp daemon to establish a connection to the server
# Author        : Veltys
# Date          : 2023-01-08
# Version       : 1.0.0
# Usage         : sudo bash pppd-client.sh | sudo ./pppd-client.sh
# Notes         :


stty -F /dev/ttyAMA0 raw
pppd /dev/ttyAMA0 115200 10.0.5.2:10.0.5.1 noauth local debug dump defaultroute nocrtscts persist maxfail 0 holdoff 1