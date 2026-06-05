
if [ $1 == 1 ]; then
echo "Invert RED and BLUE bits"

echo "0x1b0 0x40" > /sys/class/i2c-dev/i2c-9/device/9-0048/regdump;
echo "0x1b1 0x41" > /sys/class/i2c-dev/i2c-9/device/9-0048/regdump;
echo "0x1b2 0x42" > /sys/class/i2c-dev/i2c-9/device/9-0048/regdump;
echo "0x1b3 0x43" > /sys/class/i2c-dev/i2c-9/device/9-0048/regdump;
echo "0x1b4 0x44" > /sys/class/i2c-dev/i2c-9/device/9-0048/regdump;
echo "0x1b5 0x45" > /sys/class/i2c-dev/i2c-9/device/9-0048/regdump;
echo "0x1b6 0x46" > /sys/class/i2c-dev/i2c-9/device/9-0048/regdump;
echo "0x1b7 0x47" > /sys/class/i2c-dev/i2c-9/device/9-0048/regdump;


echo "0x1c0 0x50" > /sys/class/i2c-dev/i2c-9/device/9-0048/regdump;
echo "0x1c1 0x51" > /sys/class/i2c-dev/i2c-9/device/9-0048/regdump;
echo "0x1c2 0x52" > /sys/class/i2c-dev/i2c-9/device/9-0048/regdump;
echo "0x1c3 0x53" > /sys/class/i2c-dev/i2c-9/device/9-0048/regdump;
echo "0x1c4 0x54" > /sys/class/i2c-dev/i2c-9/device/9-0048/regdump;
echo "0x1c5 0x55" > /sys/class/i2c-dev/i2c-9/device/9-0048/regdump;
echo "0x1c6 0x56" > /sys/class/i2c-dev/i2c-9/device/9-0048/regdump;
echo "0x1c7 0x57" > /sys/class/i2c-dev/i2c-9/device/9-0048/regdump;
else
echo "No invert"

echo "0x1b0 0x00" > /sys/class/i2c-dev/i2c-9/device/9-0048/regdump;
echo "0x1b1 0x01" > /sys/class/i2c-dev/i2c-9/device/9-0048/regdump;
echo "0x1b2 0x02" > /sys/class/i2c-dev/i2c-9/device/9-0048/regdump;
echo "0x1b3 0x03" > /sys/class/i2c-dev/i2c-9/device/9-0048/regdump;
echo "0x1b4 0x04" > /sys/class/i2c-dev/i2c-9/device/9-0048/regdump;
echo "0x1b5 0x05" > /sys/class/i2c-dev/i2c-9/device/9-0048/regdump;
echo "0x1b6 0x06" > /sys/class/i2c-dev/i2c-9/device/9-0048/regdump;
echo "0x1b7 0x07" > /sys/class/i2c-dev/i2c-9/device/9-0048/regdump;


echo "0x1c0 0x10" > /sys/class/i2c-dev/i2c-9/device/9-0048/regdump;
echo "0x1c1 0x11" > /sys/class/i2c-dev/i2c-9/device/9-0048/regdump;
echo "0x1c2 0x12" > /sys/class/i2c-dev/i2c-9/device/9-0048/regdump;
echo "0x1c3 0x13" > /sys/class/i2c-dev/i2c-9/device/9-0048/regdump;
echo "0x1c4 0x14" > /sys/class/i2c-dev/i2c-9/device/9-0048/regdump;
echo "0x1c5 0x15" > /sys/class/i2c-dev/i2c-9/device/9-0048/regdump;
echo "0x1c6 0x16" > /sys/class/i2c-dev/i2c-9/device/9-0048/regdump;
echo "0x1c7 0x17" > /sys/class/i2c-dev/i2c-9/device/9-0048/regdump;

fi

