#!/bin/bash

echo "Deploy log-battery-stats to /usr/local/bin"
sudo cp -pr log-battery-stats /usr/local/bin
sudo chmod a+rx /usr/local/bin/log-battery-stats
