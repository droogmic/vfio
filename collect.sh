set -euxo pipefail

sh scripts/iommu.sh > iommu

cat /boot/refind_linux.conf > refind_linux.conf

awk '(FNR==1){print "## " FILENAME}1' /etc/X11/xorg.conf.d/*.conf > xorg.xml

cat /etc/qemu/bridge.conf > qemu_bridge.conf

cat /etc/libvirt/qemu.conf > libvirt_qemu.conf

sudo virsh dumpxml win10 > libvirt_vm.xml
