#!/bin/bash

dconf load / < /proaluno/dconf-dump.ini

mate-settings-daemon --replace &
mate-panel --replace &
marco --no-composite --replace &
killall mate-volume-control-applet
killall caja
mate-volume-control-applet

# as vezes o menu não carrega na primeira
dconf load / < /proaluno/dconf-dump.ini
