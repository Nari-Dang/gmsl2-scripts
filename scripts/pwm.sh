#Export PWM

if [ ! -f /sys/class/pwm/pwmchip3/pwm0/period ]; then
    echo 0 > /sys/class/pwm/pwmchip3/export
fi

freq=$1
duty=$2

period=$((1000000000/$1))
duty_cycle=$(($2*$period/100))

echo "freq=$freq Hz ($duty%) period=$period ns duty_cycle=$duty_cycle ns"

# workaround for Jetson:
period=$(($period*2))
duty_cycle=$(($duty_cycle*2))
echo "workaround period = $period ns"

# Freq = 5Khz   <-> 200us
# Freq = 50Khz  <-> 20us
# Freq = 100Khz <-> 10us
# Set Period (in ns) 
echo "$period" > /sys/class/pwm/pwmchip3/pwm0/period

# Set Duty Cycle (in ns)
echo "$duty_cycle" > /sys/class/pwm/pwmchip3/pwm0/duty_cycle

#Enable
echo 1 > /sys/class/pwm/pwmchip3/pwm0/enable


