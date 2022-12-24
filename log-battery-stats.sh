#!/bin/bash
#

#
# Record battery information on a Linux system to a file
# to gain the ability to see battery quality over time
#

DEFAULT_BATTERY="/org/freedesktop/UPower/devices/battery_BAT0"

DEFAULT_LOG_ALL="/var/log/battery-info.log"
DEFAULT_LOG_TABLE="/var/log/battery-table.log"

upower -i "$DEFAULT_BATTERY" >> $DEFAULT_LOG_ALL

energy_full_design=$(upower -i "$DEFAULT_BATTERY" | fgrep 'energy-full-design:' | awk '{print $2}')

energy_full=$(upower -i "$DEFAULT_BATTERY" | fgrep 'energy-full:' | awk '{print $2}')

charge_cycles=$(upower -i "$DEFAULT_BATTERY" | fgrep 'charge-cycles:' | awk '{print $2}')

capacity=$(upower -i "$DEFAULT_BATTERY" | fgrep 'capacity:' | awk '{print $2}')

printf "design %-12s full %-12s capacity %-12s cycles %-12s\n" $energy_full_design $energy_full $capacity $charge_cycles >> $DEFAULT_LOG_TABLE
