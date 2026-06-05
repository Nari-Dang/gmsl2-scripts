
#=============================================================
# SERIALIZER
#=============================================================

if [ $1 == 1 ]; then
echo "Enable VIDEO TX"
echo "0x1a2 0x20" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump
else
echo "Disable VIDEO TX"
echo "0x1a2 0x00" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump
fi

