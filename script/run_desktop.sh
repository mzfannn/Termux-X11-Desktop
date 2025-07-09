#!/data/data/com.termux/files/usr/bin/bash

# Kill any existing Termux-X11 processes
pkill -f "termux.x11" 2>/dev/null

# Start PulseAudio with TCP module for Termux-X11
pulseaudio --start \
  --load="module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1" \
  --exit-idle-time=-1

# Prepare Termux-X11 session
export XDG_RUNTIME_DIR=${TMPDIR}
termux-x11 :0 >/dev/null &

# Wait for Termux-X11 to fully launch
sleep 3

# Open Termux-X11 MainActivity (foreground window)
am start --user 0 -n com.termux.x11/com.termux.x11.MainActivity >/dev/null 2>&1
sleep 1

# Set PulseAudio target
export PULSE_SERVER=127.0.0.1

# Start XFCE4 desktop session
env DISPLAY=:0 dbus-launch --exit-with-session xfce4-session >/dev/null 2>&1 &

exit 0
