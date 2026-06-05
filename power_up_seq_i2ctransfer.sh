
# Deserializer: RESET_LINK oneshott (BIT 5)=1
#echo "0x10 0x31" > /sys/class/i2c-dev/i2c-1/device/1-0048/regdump; 
i2ctransfer -y -f 1 w3@0x48 0x00 0x10 0x91

# Serializer: RESET_LINK (BIT 6)=1
#echo "0x10 0x51" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump;
i2ctransfer -y -f 1 w3@0x64 0x00 0x10 0x91


sleep 0.3

# Serializer: RESET_LINK (BIT 6)=0
#echo "0x10 0x11" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump;
#i2ctransfer -y -f 1 w3@0x64 0x00 0x10 0x11


# Deserializer: RESET_LINK (BIT 6)=0
#echo "0x10 0x11" > /sys/class/i2c-dev/i2c-1/device/1-0048/regdump;


