Adafruit-GPIO-Halt
==================

Press-to-halt program for headless Raspberry Pi. Similar functionality to the rpi_power_switch kernel module from the fbtft project, but easier to compile (no kernel headers needed).

# Modifications
- Added a second argument, the time (in milliseconds) that the button should be kept pressed for halt to start.
First argument, which was present in the original, is the GPIO pin (21 by default).
- `Make install` will copy the executable to /usr/local/sbin (instead of /usr/local/bin) and set root as the owner. This makes more sense as power handling commands are usually owned by root and located in sbin directories.

## Install as a service 
(Based on this blog post: https://www.recantha.co.uk/blog/?p=13999)

Create and open service file:
```
sudo vi /etc/systemd/system/gpio-halt.service
```
Add this content to the file:
```
[Unit]
Description=GPIO shutdown (pin 21 to ground)
After=multi-user.target

[Service]
Type=idle
ExecStart=/usr/local/sbin/gpio-halt 21 3000

[Install]
WantedBy=multi-user.target
```
Start the script:
```
sudo systemctl daemon-reload
sudo systemctl start gpio-halt.service
```
Make the service run every time the system boots:
```
sudo systemctl enable gpio-halt.service
```
If you want to check the status of the service:
```
sudo systemctl status gpio-halt.service
```
