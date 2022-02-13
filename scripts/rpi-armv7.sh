echo "Creating rpi-armv7-archlinux.img..."
bash /tmp/scripts/create-image armv7 8G
echo "Compressing rpi-armv7-archlinux.img..."
xz -z rpi-armv7-archlinux.img -c > rpi-armv7-archlinux.img.xz
zip rpi-armv7-archlinux.img.zip rpi-armv7-archlinux.img
rm rpi-armv7-archlinux.img
