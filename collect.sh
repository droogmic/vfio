set -euxo pipefail

printf "VFIO Settings" > data

printf "\n\n### IOMMU\n" >> data
sh scripts/iommu.sh >> data

printf "\n\n### libvirt\n" >> data
cat /etc/libvirt/qemu/win10.xml >> data

printf "\n\n### Xorg\n" >> data
cat /etc/X11/xorg.conf.d/10-amdgpu.conf >> data

printf "\n\n### reFIND\n" >> data
cat /boot/refind_linux.conf >> data

printf "\n\n### QEMU\n" >> data
cat /etc/libvirt/qemu.conf >> data

printf "\n\n### QEMU Bridge\n" >> data
cat /etc/qemu/bridge.conf >> data
