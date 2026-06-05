

# VIDEO_TX6 (0x106)
# Bit 6: 1: mask, 0: not mask
# Default: 0x00
echo "0x106 0x00" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump; dmesg | grep gmsl


# VIDEO_RX10 (0x10a)
# Bit 6: 1: mask, 0: not mask
# Default: 0x00
echo "0x10a 0x00" > /sys/class/i2c-dev/i2c-9/device/9-0048/regdump; dmesg | grep gmsl
