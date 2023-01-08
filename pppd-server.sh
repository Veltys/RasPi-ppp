#!/bin/sh

# Title         : pppd-client.sh
# Description   : Initializes the ppp daemon to listen connections
# Author        : Veltys
# Date          : 2023-01-08
# Version       : 1.0.0
# Usage         : sudo bash pppd-server.sh | sudo ./pppd-server.sh
# Notes         :


stty -F /dev/ttyUSB0 raw
pppd /dev/ttyUSB0 115200 10.0.5.1:10.0.5.2 proxyarp local noauth debug nodetach dump nocrtscts passive persist maxfail 0 holdoff 1