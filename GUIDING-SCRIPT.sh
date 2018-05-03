#! /bin/bash

#SUSPEND

mkdir /usr/lib/systemd/system-sleep/
cp cros-acpi-wakeup.conf /usr/lib/systemd/system-sleep/cros-acpi-wakeup.conf && echo "cros-acpi-wakeup.conf done"
cp cros-sound-suspend.sh /usr/lib/systemd/system-sleep/cros-sound-suspend.sh && echo "cros-sound-suspend.sh done"
chmod +x /usr/lib/systemd/system-sleep/cros-sound-suspend.sh
cp 05_sound /etc/pm/sleep.d/05_sound && echo "05_sound done"
cp rc.local /etc/rc.local && echo "rc.local done"
