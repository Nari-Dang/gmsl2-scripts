
# VTX0
# Generate VS, HS, DE in free running mode
echo "0x1c8 0xe3" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump

# VTX1
# Don't touch, make it default (0xe1)
# echo "0x1c9 0xe1" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump

# VTX2
# Don't touch, make it default (0xe1)
# VS_DLY_2
# echo "0x1ca" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump

# VTX3
# Don't touch, make it default (0xe1)
# VS_DLY_1
# echo "0x1cb" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump

# VTX4
# Don't touch, make it default (0xe1)
# VS_DLY_0
# echo "0x1cc" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump

# VTX5/6/7
# VS_HIGH_2 (MSB), VS_HIGH_1, VS_HIGH_0 (LSB)
# VS high period in terms of PCLK
# Set it to vsync_width*h_total = 10 * 1344 = 13440
echo "0x1cd 0x00" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump
echo "0x1ce 0x34" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump
echo "0x1cf 0x80" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump


# VTX8/9/10
# VS_LOW_2 (MSB), VS_LOW_1, VS_LOW_0 (LSB)
# VS low period in terms of PCLK
# Set it to (v_total - vsync_width) * h_total = (635 - 10) * 1344 = 840000
echo "0x1d0 0x0c" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump
echo "0x1d1 0xd1" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump
echo "0x1d2 0x40" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump


# VTX11/12/13
# V2H_2 (MSB), V2H_1, V2H_0 (LSB)
# The delay from the VS trigger to the rising edge of the generated HS signal.
# As we don't generate timing by VS input, don't touch these registers
#echo "0x1d3" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump
#echo "0x1d4" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump
#echo "0x1d5" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump


# VTX14/15
# HS_HIGH_1 (MSB), HS_HIGH_0 (LSB)
# Set Hsync width h_sw = 144
echo "0x1d6 0x00" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump
echo "0x1d7 0x90" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump

# VTX16/17
# HS_LOW_1 (MSB), HS_LOW_0 (LSB)
# Set hs_low = h_total - hsync_width = 1344 - 144 = 1200
echo "0x1d8 0x04" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump
echo "0x1d9 0xb0" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump

# VTX18/19
# HS_CNT_1 (MSB), HS_CNT_0 (LSB)
# HS pulses per frame: set to total vertical width (total_v = 635)
echo "0x1da 0x02" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump
echo "0x1db 0x7b" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump


# VTX20/21/22
# V2D_2 (MSB), V2D_1, V2D_0 (LSB)
# VS trigger to DE in pixel clocks
# As we don't generate timing by VS input, don't touch these registers
#echo "0x1dc" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump
#echo "0x1dd" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump
#echo "0x1de" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump


# VTX23/24
# DE_HIGH_1 (MSB), DE_HIGH_0 (LSB)
# DE high in pixel clocks (set h_active = 1024)
echo "0x1df 0x04" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump
echo "0x1e0 0x00" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump


# VTX25/26
# DE_LOW_1 (MSB), DE_LOW_0 (LSB)
# DE low in pixel clocks (set h_blank = 320)
echo "0x1e1 0x01" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump
echo "0x1e2 0x40" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump


# VTX27/28
# DE_CNT_1 (MSB), DE_CNT_0 (LSB)
# Active lines per frame (h_active = 600)
echo "0x1e3 0x02" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump
echo "0x1e4 0x58" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump



# VTX29
# PATTERNGEN_MODE
# Gradient pattern generation disable, use video data from HDMI
echo "0x1e5 0x00" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump


# VTX30
# GRAD_INC
# Gradient increment 1
#echo "0x1e6 0x04" > /sys/class/i2c-dev/i2c-1/device/1-0064/regdump




