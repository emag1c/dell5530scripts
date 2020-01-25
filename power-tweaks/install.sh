#! /bin/bash

# copy the switch power settings file
cp switch-power-settings /usr/local/bin
chmod a+x /usr/local/bin/switch-power-settings

# copy the power rule files into udev
cp 99-50-ac-power.rules /etc/udev/rules.d/
cp 99-50-bat-power.rules /etc/udev/rules.d/

# copy the start up file into init.d
cp mystartupfixes /etc/init.d/
chmod 755 /etc/init.d/mystartupfixes

# copy the service file
cp mypowertweaks.service /etc/systemd/system

# enable the service file
systemctl enable mypowertweaks.service