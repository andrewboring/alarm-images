echo "Creating rpi-aarch64-archlinux.img..."
bash /tmp/scripts/create-image aarch64 8G
echo "Compressing rpi-aarch64-archlinux.img..."
xz -z rpi-aarch64-archlinux.img -c > rpi-aarch64-archlinux.img.xz
zip rpi-aarch64-archlinux.img.zip rpi-aarch64-archlinux.img
rm rpi-aarch64-archlinux.img
