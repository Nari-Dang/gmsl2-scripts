#aplay -Dplughw:CARD=HDA,DEV=3 /usr/share/sounds/alsa/Front_Left.wav

amixer -c APE cset name="I2S2 Mux" "MVC1" -q
amixer -c APE sset 'MVC1 Mux' 'ADMAIF1' -q
amixer -c APE cset name="MVC1 Volume" 12000 -q

amixer -c APE cset name='TAS2110-LEFT Digital Volume Control' 100%
amixer -c APE cset name='TAS2110-LEFT Amp Gain Volume' 100%
amixer -c APE cset name='TAS2110-RIGHT Digital Volume Control' 100%
amixer -c APE cset name='TAS2110-RIGHT Amp Gain Volume' 100%

# aplay -D hw:APE,0  /usr/share/sounds/alsa/Front_Left.wav
aplay -vv -D hw:APE,0 ./the_power_of_love_s32le_48Khz.wav
