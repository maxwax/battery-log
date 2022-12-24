# battery-log
Record battery stats on Linux for historical analysis

## Operation

Normally run via root's cron in order to output to /var/log/battery.log and battery-table.log.

## Options

None presently

## Usefulness

A new battery should charge to 100% of its full design capacity.

Over time the battery will degrade and its full charge will be less than its design capacity.  This is normal.

Tracking the battery's degradation helps monitor its health to set expectations.

