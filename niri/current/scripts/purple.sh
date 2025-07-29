#! /bin/fish

set first "distortia.png"
set second "summit.jpeg"
set theme "purple"

sed -i '14s/.*/    "color": "38;2;104;64;114",/' ~/.config/fastfetch/config.jsonc
sed -i '81s/.*/        active-color "#4a295e"/' ~/.config/niri/config.kdl
sed -i '38s/.*/    background-color: #684072;/' ~/.config/waybar/style.css
sed -i '39s/.*/    border-color: #4a295e;/' ~/.config/waybar/style.css

killall waybar
waybar &

gowall convert ~/Pictures/Wallpaper/$first -t $theme
gowall convert ~/Pictures/Wallpaper/$second -t $theme

gowall convert ~/.config/fastfetch/grayscale.png --output ~/.config/fastfetch/filtered.png -t $theme

swww img -o "DP-1" ~/Pictures/gowall/$first --transition-type any --transition-fps 120
swww img -o "HDMI-A-1" ~/Pictures/gowall/$second --transition-type any --transition-fps 120

wal -ntei ~/Pictures/gowall/$second
openrgb -p ~/.config/OpenRGB/Purple.orp

clear
fastfetch
