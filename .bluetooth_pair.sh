TOGGLE=$HOME/.toggle

if [ ! -e $TOGGLE ]; then
    touch $TOGGLE
    rfkill unblock bluetooth
    x=$(bluetoothctl connect XX:XX:XX:XX:XX:XX)
    y=$(echo "$x" | grep "success")
    z=$(expr length "$y")
    a=0
    while [ "$z" -eq "$a" ]; do
        x=$(bluetoothctl connect XX:XX:XX:XX:XX:XX)
        y=$(echo "$x" | grep "success")
        z=$(expr length "$y")
        a=0
        sleep 1
    done
else
    rm $TOGGLE
    rfkill block bluetooth
fi
