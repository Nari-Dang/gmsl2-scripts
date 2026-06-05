# GPIO B
# Default: 0xA2
# Set: 0xA2 (pull-up, GPIO_TX_ID=2)
echo "0x207 0xa2" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump

# GPIO C
# Default: 0x42
# Set: 0x42 
#  OVR_RES_CFG[7] =  0 (config non-GPIO function pullup resistor)
#       0b0: Non-GPIO function determines IO type when alternate function is selected
#       0b1: RES_CFG and PULL_UPDN_SEL determine IO type for non-GPIO configuration
#  GPIO_RX_ID=2

echo "0x208 0x42" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump



# GPIO A
# Default: 0x81
# Set: 0x81 
#   RES_CFG[7] = 1: pullup resitor = 1M 
#   GPIO_OUT[4] (RW): output value to pin
#   GPIO_IN[3] (read-only): read GPIO pin value
#   GPIO_RX_EN[2] = 0:  RX disable
#   GPIO_TX_EN[1] = 1: TX enable
#   GPIO_OUT_DIS[0] = 1: output driver disabled
echo "0x206 0x83" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump


#==============================================================================

# B
# PULL_UPDN_SEL[7:6] = 0b01 Pullup
# OUT_TYPE[5] = 0 Open drain
# GPIO_TX_ID[4:0] = 2
echo "0x207 0x42" > /sys/class/i2c-dev/i2c-9/device/9-0048/regdump


# GPIO A
# Default: 0x81
# Set: 0x8d
#   RES_CFG[7] = 1: pullup resitor = 1M
#   GPIO_OUT[4] (RW): output value to pin
#   GPIO_IN[3] (read-only): read GPIO pin value
#   GPIO_RX_EN[2] = 1:  RX enable
#   GPIO_TX_EN[1] = 0: TX disable
#   GPIO_OUT_DIS[0] = 0: output driver enabled
echo "0x206 0x8c" > /sys/class/i2c-dev/i2c-9/device/9-0048/regdump
