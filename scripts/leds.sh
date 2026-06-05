freq=1.5625Khz
duty=$1

if [ $duty -gt 99 ]; then
    echo "Duty cycle should be less than 100"
    exit
fi

IDC_dec=$(($duty*256/100))
IDC_hex=$( printf "%x" $IDC_dec )

echo "freq=$freq ($duty%), IDC = 0x$IDC_hex"

# Set LEDOUT.LDRx = 0b10: driver x brightness can be controlled through its PWMx register
i2ctransfer -y 9 w2@0x62 0x08 0xAA
i2ctransfer -y 9 w2@0x62 0x02 0x$IDC_hex
i2ctransfer -y 9 w2@0x62 0x03 0x$IDC_hex
i2ctransfer -y 9 w2@0x62 0x04 0x$IDC_hex
i2ctransfer -y 9 w2@0x62 0x05 0x$IDC_hex

