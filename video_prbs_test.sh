if [ $1 == 0 ]; then
    echo "Disable video PRBS test"
    echo "0x1cd 0x00" > /sys/class/i2c-dev/i2c-1/device/1-0048/regdump
    echo "0x1e5 0x00" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump
    echo "0x2a 0x20" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump
    echo "0x29 0x00" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump
    echo "0x1f" > /sys/class/i2c-dev/i2c-1/device/1-0048/regdump; dmesg | grep 0x001f
    echo "0x1cc" > /sys/class/i2c-dev/i2c-1/device/1-0048/regdump; dmesg | grep 0x01cc
    exit
fi;

echo "Enable video PRBS tests"

###################################################################
# CONFIGURE ERRG                                                  #
###################################################################
# GMSL TX1 (0x29)
# BIT 7: LINK_PRBS_EN
# BIT 5: ERRG_EN_B
# BIT 4: ERRG_EN_A
echo "0x29 0x10" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump;

# GMSL TX2 (0x2a)
# BIT 7-6: ERRG_CNT number of errors to be generated 0-continuous, 1-16 errors, 2-128 errors, 3-1024 erors
# BIT 5-4: ERRG_RATE Average Bit-Error Rate, 0-one error in 5122 bits, 1-81920, 2-1310720, 3-20971520
# BIT 3-1: ERRG_BURST Busrst-Error Length, 0-1, 1-2, 2-3, 3-4, 4-8, 5-12, 6-16, 7-20
# BIT 0:   ERRG_PER Error Distribution Selection, 0-Pseudorandom, 1-Periodic
# Default: 0x20
echo "0x2a 0xf0" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump;

###################################################################
# ENABLE VIDEO PRBS ON SERIALIZER                                 #
###################################################################
# Serializer: VTX 29 (0x1e5)
# Default: 0x00
# Set BIT 7 (VID_PRBS_EN) = 1 to enable video PRBS generator
echo "0x1e5 0x80" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump; 

###################################################################
# ENABLE VIDEO PRBS CHECKER ON DESERIALIZER                       #
###################################################################
# Deserializer
# OLDI0 (0x1cd)
# BIT 5: VPRBS_FAIL
# BIT 4: VPRBS_CHK_EN
# Set 1 to BIT 4 to enable VPRBS checker
echo "0x1cd 0x10" > /sys/class/i2c-dev/i2c-1/device/1-0048/regdump;

###################################################################
# READ PRBS ERROR NUMBER AND STATUS ON DESERIALIZER               #
###################################################################
# INR7 (0x1f)
# BIT 2: VPRBS_ERR_FLAG: indicate VPRBS errror
echo "0x1f" > /sys/class/i2c-dev/i2c-1/device/1-0048/regdump; dmesg | grep 0x001f

# PRBS_ERR (0x1cc)
# BIT 7-0: number of VPRBS error, clear on read
echo "0x1cc" > /sys/class/i2c-dev/i2c-1/device/1-0048/regdump; dmesg | grep 0x01cc


