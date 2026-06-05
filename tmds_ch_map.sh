
# SYS_TMDS_CH_MAP (0x230e)
# Swap: 0x06
# Default: 0x24
echo "0x230e 0x40" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump; dmesg | grep gmsl

