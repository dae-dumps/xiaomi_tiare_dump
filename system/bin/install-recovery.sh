#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:21439748:abe10d167f7c19a6bf8f753da88bf915184127dd; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:16667904:7122b5c29e6af0f77361d9e560f08ea802798de2 EMMC:/dev/block/bootdevice/by-name/recovery abe10d167f7c19a6bf8f753da88bf915184127dd 21439748 7122b5c29e6af0f77361d9e560f08ea802798de2:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
