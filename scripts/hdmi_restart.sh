
#=============================================================
# SERIALIZER
#=============================================================

echo "0x01 0x58" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump
sleep 1
echo "0x01 0xd8" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump
