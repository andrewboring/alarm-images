echo "Creating rpi-2-archlinux.img..."
bash /tmp/scripts/create-image rpi-2
echo "Compressing rpi-2-archlinux.img..."
xz -z rpi-2-archlinux.img -c > rpi-2-archlinux.img.xz
zip rpi-2-archlinux.img.zip rpi-2-archlinux.img
rm rpi-2-archlinux.img
