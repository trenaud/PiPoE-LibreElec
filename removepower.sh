#!/usr/bin/env bash

# Check if the invoked target includes reboot
systemctl list-units --type target | grep -q 'reboot'

# if found it, $? countains 0 (true), else 1 (false)
if [ $? = 1 ]
	# It is a shutdown or poweroff
	then
	# Prepares to remove power in about 30 seconds
	/storage/.config/pipoe/sendturnoffsignal.sh
fi
# If it is a reboot then nothing happens
