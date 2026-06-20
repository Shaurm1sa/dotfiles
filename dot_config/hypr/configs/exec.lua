hl.on("hyprland.start", function()
	hl.exec_cmd("systemctl --user start hyprpolkitagent")
	hl.exec_cmd("hyprpaper")
	hl.exec_cmd("waybar")
	hl.exec_cmd("kanshi")
	hl.exec_cmd("dunst")
	hl.exec_cmd("udiskie -t")
	hl.exec_cmd("gsettings set org.gnome.desktop.interface icon-theme Papirus-Dark")
	---FIX OBS---
	hl.exec_cmd("killall -9 xdg-desktop-portal-hyprland xdg-desktop-portal")
	hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=Hyprland")
	hl.exec_cmd(
		"systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP"
	)
	hl.exec_cmd("/usr/lib/xdg-desktop-portal-hyprland &")
	hl.exec_cmd("sleep 1 && /usr/lib/xdg-desktop-portal &")
	-------------
end)
