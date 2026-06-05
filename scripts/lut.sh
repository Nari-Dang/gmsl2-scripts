echo "Usage: lut.sh 0xRR 0xGG 0xBB"

echo "0x1cd 0x07" > /sys/class/i2c-dev/i2c-9/device/9-0048/regdump
red=$1
green=$2
blue=$3

# LUT_A (RED)
for color in {0..255}; do
    reg=$((0x1000+$color))
    val=`printf 0x%X $reg`
    echo "RED $val = $red"
    echo "$val $red" > /sys/class/i2c-dev/i2c-9/device/9-0048/regdump
done

# LUT_B (GREEN)
for color in {0..255}; do
    reg=$((0x1100+$color))
    val=`printf 0x%X $reg`
    echo "GREEN $val = $green"
    echo "$val $green" > /sys/class/i2c-dev/i2c-9/device/9-0048/regdump
done


# LUT_C (BLUE)
for color in {0..255}; do
    reg=$((0x1200+$color))
    val=`printf 0x%X $reg`
    echo "BLUE $val = $blue"
    echo "$val $blue" > /sys/class/i2c-dev/i2c-9/device/9-0048/regdump
done




