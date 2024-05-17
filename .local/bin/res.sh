if [ $(hyprctl monitors | grep ' at ' | cut -d@ -f2 | cut -d. -f1) = 60 ]; then
	hyprctl keyword monitor eDP-1,2880x1800@120,0x0,1 && sleep 1 
	brightnessctl s $(brightnessctl g) 
	echo 120 > /tmp/fps.tmp
else
	hyprctl keyword monitor eDP-1,2880x1800@60,0x0,1 && sleep 1 
	brightnessctl s $(brightnessctl g)
	echo 60 > /tmp/fps.tmp
fi
