Adafruit-GPIO-Halt
==================

Press-to-halt program for headless Raspberry Pi. Similar functionality to the rpi_power_switch kernel module from the fbtft project, but easier to compile (no kernel headers needed).

# Modification:
Added a second argument, the time (in milliseconds) that the button should be kept pressed for halt to start.
First argument, which was present in the original, is the GPIO pin (21 by default).
