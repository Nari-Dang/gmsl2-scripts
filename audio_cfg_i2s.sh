
#=============================================================
# SERIALIZER
#==============================================================

# RX_AUDRX_CTRL
# I2S Output mode: SD is on or off depending on reg_sd0_en (I2S_CTRL2[4])
# Default: 0x18 (I2S grounded)
echo "0x2129 0x18" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump

# REG2
# Enable transmit audio channel X
echo "0x0002 0x47" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump

# ADUIO_TX0
# Audio source
# 0x00: HDMI
# 0xb0: I2S
echo "0x0120 0xb0" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump



#=============================================================
# DESERIALIZER
#=============================================================

# ADUIO_RX1 0x140
# Bit 0: 0 audio RX disable, 1 audio RX enable
# Default: 0x21
echo "0x0140 0x21" > /sys/class/i2c-dev/i2c-1/device/1-0048/regdump
