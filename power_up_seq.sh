
# Deserializer: RESET_LINK oneshott (BIT 5)=1
echo "0x10 0x31" > /sys/class/i2c-dev/i2c-1/device/1-0048/regdump; 

# Serializer: RESET_LINK (BIT 6)=1
echo "0x10 0x51" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump;

sleep 0.3

# Deserializer: RESET_LINK (BIT 6)=0
echo "0x10 0x11" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump;

# Deserializer: RESET_LINK (BIT 6)=0
#echo "0x10 0x11" > /sys/class/i2c-dev/i2c-1/device/1-0048/regdump;


