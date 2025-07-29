#! /bin/fish

set first "forest.png"
set second "cloud_3.png"
set theme "red"

sed -i '14s/.*/    "color": "38;2;208;73;73",/' ~/.config/fastfetch/config.jsonc
sed -i '81s/.*/        active-color "#d04949"/' ~/.config/niri/config.kdl
sed -i '38s/.*/    background-color: #d04949;/' ~/.config/waybar/style.css
sed -i '39s/.*/    border-color: #d04949;/' ~/.config/waybar/style.css

killall waybar
waybar &

gowall convert ~/Pictures/Wallpaper/$first -t $theme
gowall convert ~/Pictures/Wallpaper/$second -t $theme

gowall convert ~/.config/fastfetch/grayscale.png --output ~/.config/fastfetch/filtered.png -t $theme

swww img -o "DP-1" ~/Pictures/gowall/$first --transition-type any --transition-fps 120
swww img -o "HDMI-A-1" ~/Pictures/gowall/$second --transition-type any --transition-fps 120

wal -ntei ~/Pictures/gowall/$first
openrgb -p ~/.config/OpenRGB/Red.orp

clear
fastfetch
