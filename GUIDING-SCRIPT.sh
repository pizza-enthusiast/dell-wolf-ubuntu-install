#! /bin/bash

#TRACKPAD
cp modules /etc/modules && echo "modules done"
cp 50-synaptics.conf /usr/share/X11/xorg.conf.d/50-synaptics.conf && echo "50-synaptics.conf 1/2 done"
mkdir /etc/X11/xorg.conf.d
cp 50-synaptics.conf /etc/X11/xorg.conf.d/50-synaptics.conf && echo "50-synaptics.conf 2/2 done"
## bash cros-haswell-modules.sh

#SUSPEND

mkdir /usr/lib/systemd/system-sleep/
cp cros-acpi-wakeup.conf /usr/lib/systemd/system-sleep/cros-acpi-wakeup.conf && echo "cros-acpi-wakeup.conf done"
cp cros-sound-suspend.sh /usr/lib/systemd/system-sleep/cros-sound-suspend.sh && echo "cros-sound-suspend.sh done"
chmod -x /usr/lib/systemd/system-sleep/cros-sound-suspend.sh
cp 05_sound /etc/pm/sleep.d/05_sound && echo "05_sound done"
cp rc.local /etc/rc.local && echo "rc.local done"

#add to grub /etc/default/grub:
#GRUB_CMDLINE_LINUX_DEFAULT="quiet add_efi_memmap boot=local noresume noswap i915.modeset=1 tpm_tis.force=1 tpm_tis.interrupts=0 modprobe.blacklist=ehci_pci nmi_watchdog=panic,lapic"
#update-grub && update-grub2
