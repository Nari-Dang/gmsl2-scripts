# Serializer error registers start from CTRL3 (0x13)
# Especially, CTRL3 (0x13) contains the following error bits:
# - BIT 1: CMU locked
# - BIT 2: error status
#             0: ERRB no asserted (ERRB pin = 1), meaning no errors
#             1: ERRB asserted (ERRB pin = 0), meaning there're errors
# - BIT 3: GMSL2 Link LOCKED
# - BIT 5:4: Active Link mode 
#             0: Dual Link
#             1: Link A
#             2: Link B
#             3: Splitter
echo "0x13 32" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump_cfg
cat  /sys/class/i2c-dev/i2c-1/device/1-0064/regdump

echo "0x2080 16" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump_cfg
cat  /sys/class/i2c-dev/i2c-1/device/1-0064/regdump

echo "0x434 16" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump_cfg
cat  /sys/class/i2c-dev/i2c-1/device/1-0064/regdump


echo "0x13 32" > /sys/class/i2c-dev/i2c-9/device/9-0048/regdump_cfg
cat  /sys/class/i2c-dev/i2c-9/device/9-0048/regdump
