# Bluetooth-auto-connect

## Note: replace XX:XX:XX:XX:XX:XX in code with the mac address of your bluetooth device

Shell script to automatically connect any Bluetooth device to your linux machine using a shortcut, and disconnect, and switch off bluetooth on the same shortcut press.

first run:
`hcitool dev`
on terminal and then scan for your bluetooth device:
`hcitool -i hci0 scan`
after that, trust the device by typing:
`bluetoothctl` in terminal
then: `trust FC:XX:XX:XX:XX:FE` where FC:XX:XX:XX:XX:FE is the MAC address of the device

After doing these basic steps, place the code provided in home directory and add a keyboard shortcut with the command: `sh code.sh`
