echo "Creating rpi-4-archlinux.img..."
bash /tmp/scripts/create-image rpi-4
echo "Compressing rpi-4-archlinux.img..."
xz -z rpi-4-archlinux.img -c > rpi-4-archlinux.img.xz
zip rpi-4-archlinux.img.zip rpi-4-archlinux.img
rm rpi-4-archlinux.img
