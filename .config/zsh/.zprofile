MPD_HOST="127.0.0.1"
XZ_OPT='-T0 -9'
if [ -z "$XDG_RUNTIME_DIR" ]; then
  XDG_RUNTIME_DIR="/tmp/$(id -u)-runtime-dir"
  mkdir -pm 0700 "$XDG_RUNTIME_DIR"
  export XDG_RUNTIME_DIR
fi

export CARGO_HTTP_MULTIPLEXING=false
if [ $TTY = "/dev/tty1" ]; then
  exec dbus-launch --exit-with-session Hyprland
fi

