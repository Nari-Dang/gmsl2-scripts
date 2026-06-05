echo "Config to dump edid data at 0x2e00 128 bytes"
echo "0x2e00 128" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump_cfg

echo "Dumping.."
cat /sys/class/i2c-dev/i2c-1/device/1-0064/regdump

