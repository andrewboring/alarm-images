echo "Creating rpi-archlinux.img..."
bash /tmp/scripts/create-image rpi-2
echo "Compressing rpi-archlinux.img..."
xz -z rpi-archlinux.img -c > rpi-archlinux.img.xz
zip rpi-archlinux.img.zip rpi-archlinux.img
rm rpi-archlinux.img
