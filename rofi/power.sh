#!/usr/bin/env bash

op=$( echo -e "🔌 Poweroff\n♻️ Reboot\n🌙 Suspend\n🔒 Lock (INOP)\n🏃‍♀️ Logout\n🖥 Close" | rofi -i -dmenu | awk '{print tolower($2)}' )

case $op in 
    poweroff)
    ;&
    reboot)
    ;&
    suspend)
        systemctl $op
        ;;
    lock)
	#swaylock
        ;;
    logout)
        niri msg action quit --skip-confirmation
        ;;
    close)
	niri msg action power-off-monitors
	;;
esac
