#!/bin/bash

# Title         : install.sh
# Description   : Install the components
# Author        : Veltys
# Date          : 2023-01-08
# Version       : 1.2.2
# Usage         : sudo bash install.sh client / server | sudo ./install.sh client / server
# Notes         :


if [ "$#" -ne '1' ] || [ $(whoami) != 'root' ] || ( [ "$1" != 'client' ] && [ "$1" != 'server' ] ); then
	cat << EOS
install.sh: client / server
	Install the client or server component

	Arguments:
	  client	install the client component
	  server	install the server component

	Exit code:
	Returns correct if the installation was successful.

	Notes:
	Must be run as superuser.
EOS
else
	apt-get install ppp

	cp "pppd-${1}.sh" "/usr/local/bin/pppd-${1}.sh"
	cp "pppd-${1}.service" "/etc/systemd/system/pppd-${1}.service"
	
	systemctl daemon-reload
	systemctl enable "pppd-${1}"
	systemctl start "pppd-${1}"

	if [ "$1" == 'server' ]; then
		sysctl -w net.ipv4.ip_forward=1

		apt-get install iptables

		iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
	fi
fi