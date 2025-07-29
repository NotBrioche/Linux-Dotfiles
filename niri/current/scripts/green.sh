#! /bin/fish

set first "house_1.png"
set second "landscape.png"
set theme "green"

sed -i '14s/.*/    "color": "38;2;0;156;109",/' ~/.config/fastfetch/config.jsonc
sed -i '81s/.*/        active-color "#009E6C"/' ~/.config/niri/config.kdl
sed -i '38s/.*/    background-color: #328f6f;/' ~/.config/waybar/style.css
sed -i '39s/.*/    border-color: #7eb587;/' ~/.config/waybar/style.css

killall waybar
waybar &

gowall convert ~/Pictures/Wallpaper/$first -t $theme
gowall convert ~/Pictures/Wallpaper/$second -t $theme

gowall convert ~/.config/fastfetch/grayscale.png --output ~/.config/fastfetch/filtered.png -t $theme

swww img -o "DP-1" ~/Pictures/gowall/$first --transition-type any --transition-fps 120
swww img -o "HDMI-A-1" ~/Pictures/gowall/$second --transition-type any --transition-fps 120

wal -ntei ~/Pictures/gowall/$first
openrgb -p ~/.config/OpenRGB/Green.orp

clear
fastfetch
