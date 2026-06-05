# RX_SYS_SWTCHC (0x2009)
# Default: 0xc7

# Read
echo "0x2009" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump; dmesg | grep "0x2009"

# Enable
echo "0x2009 0xc7" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump;

# Disable
echo "0x2009 0xc6" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump;

