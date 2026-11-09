if pgrep -x hypridle >/dev/null; then
  pkill -x hypridle
else
  hypridle &
fi
