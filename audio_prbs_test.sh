
#=============================================================
# SERIALIZER
#=============================================================

# ADUIO_TX7 0x127 (Channel X), 0x137 (Channel Y)
# Audio PRBS test
# Bit 7: 0 SCK, 1 internal oscillator
# Bit 6: 0 disable, 1 enable
# Default: 0x00
echo "0x0127 0x01" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump

# TX1 0x29
# Enable PRBS error generator
# Bit 7: Enable Link PRBS-7 Generator
# Bit 5: Error Generator Enable for Link-B
# Bit 4: Error Generator Enable for Link-A
# Default: 0x00
echo "0x29 0x90" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump


#=============================================================
# DESERIALIZER
#=============================================================

# ADUIO_RX1 0x140
# Bit 0: 0 audio RX disable, 1 audio RX enable
# Default: 0x21
echo "0x0140 0x21" > /sys/class/i2c-dev/i2c-9/device/9-0048/regdump

# ADUIO_RX7 0x146
# Bit 4: 0 Disable audio PRBS checker, 1 Enable audio PRBS checker
# Bit 3:2: RX audio stream ID
# Default: 0x02
echo "0x0146 0x12" > /sys/class/i2c-dev/i2c-9/device/9-0048/regdump

# TX1 0x29
# Enable PRBS error generator
# Bit 7: Enable Link PRBS-7 Generator
# Bit 5: Error Generator Enable for Link-B
# Bit 4: Error Generator Enable for Link-A
# Default: 0x00
echo "0x29 0x90" > /sys/class/i2c-dev/i2c-9/device/9-0048/regdump
