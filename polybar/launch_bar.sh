#!/bin/bash
polybar-msg cmd quit

polybar workspaces -c ~/.config/polybar/workspaces & disown
polybar system-info -c ~/.config/polybar/system-info & disown
# polybar tray -c ~/.config/polybar/tray &
