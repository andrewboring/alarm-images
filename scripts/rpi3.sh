echo "Creating rpi-3-archlinux.img..."
bash /tmp/scripts/create-image rpi-3
echo "Compressing rpi-3-archlinux.img..."
xz -z rpi-3-archlinux.img -c > rpi-3-archlinux.img.xz
zip rpi-3-archlinux.img.zip rpi-3-archlinux.img
rm rpi-3-archlinux.img
