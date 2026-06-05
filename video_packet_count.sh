#enum {
#	PACKET_NONE = 0,
#	PACKET_VIDEO,
#	PACKET_AUDIO,
#	PACKET_INFOF,
#	PACKET_SPI,
#	PACKET_IIC,
#	PACKET_UART,
#	PACKET_GPIO,
#	PACKET_RESERVED,
#	PACKET_ALL = 0x0E,
#	PACKET_UNKNOWN_AND_ERROR,
#};

# Count video packet
echo "1" > /sys/class/i2c-dev/i2c-1/device/1-0064/packet_count
echo "1" > /sys/class/i2c-dev/i2c-1/device/1-0048/packet_count

echo "MAX96751 packet count"
cat /sys/class/i2c-dev/i2c-1/device/1-0064/packet_count

echo "MAX96752 packet count"
cat /sys/class/i2c-dev/i2c-1/device/1-0048/packet_count
