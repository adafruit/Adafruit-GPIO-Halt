Adafruit-GPIO-Halt
==================

Press-to-halt program for headless Raspberry Pi. Similar functionality to the rpi_power_switch kernel module from the fbtft project, but easier to compile (no kernel headers needed).

# Modifications
- Added a second argument, the time (in milliseconds) that the button should be kept pressed for halt to start.
First argument, which was present in the original, is the GPIO pin (21 by default).
- `Make install` will copy the executable to /usr/local/sbin (instead of /usr/local/bin) and set root as the owner
