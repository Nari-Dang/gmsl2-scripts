#=============================================================
# SERIALIZER
#=============================================================

#enum {
#	CRC_VIDEO_LINE,
#	CRC_VIDEO_PIXEL,
#	CRC_AUDIO_PACKET,
#	CRC_IICX_PACKET,
#	CRC_IICY_PACKET,
#	CRC_GPIO_PACKET,
#	CRC_SPI_PACKET,
#	CRC_INFOF_PACKET,
#	CRC_CC_PACKET,
#	CRC_ALL,
#};

# Enable CRC_VIDEO_PIXEL
echo $0 $1
# Deserializer should be enabled CRC checking first as it is a receiver
echo "$1" > /sys/class/i2c-dev/i2c-9/device/9-0048/crc
# Serailzier should be enabled after deserializer
echo "$1" > /sys/class/i2c-dev/i2c-1/device/1-0064/crc
