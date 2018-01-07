# Please set this to /etc/rc.local for auto run in start up time
# echo x > /sys/class/backlight/intel_backlight/brightness
# max x is 1000

echo 255 > /sys/class/backlight/intel_backlight/brightness
