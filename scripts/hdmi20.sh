# Enable HDMI 2.0 Mode
# Hold HDMI receiver digital logic in reset
echo "0x2005 0x01" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump
# Enable all 3 TMDS data channels
echo "0x3D0C 0x20" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump
echo "0x3E8D 0x40" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump
# HDMI2 overwrite, scdt on
echo "0x3E50 0x23" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump
# 5MHz OSC for Zone detect reset
echo "0x3C04 0x04" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump
# Release reset of 5MHz OSCGMSL2 General User Guide
# Analog Devices Page 229 of 255
echo "0x3C04 0x00" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump
echo "0x230E 0x24" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump
echo "0x230F 0x00" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump
echo "0x233B 0x80" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump
echo "0x2301 0x00" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump
# Scramble-on overwrite, HDMI2-on overwrite
echo "0x2040 0x33" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump
echo "0x2313 0x20" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump
# Release HDMI receiver digital reset
echo "0x2005 0x00" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump
