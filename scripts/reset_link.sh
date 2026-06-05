
#=============================================================
# SERIALIZER
#=============================================================

# Read
echo "0x10" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump; dmesg | grep 0010

# RESET LINK
echo "0x10 0x51" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump; dmesg | grep 0010

# DEASSERT 
echo "0x10 0x11" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump; dmesg | grep 0010

