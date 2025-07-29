#! /bin/fish

set first "moon.png"
set second "road.png"
set theme "blue"

sed -i '14s/.*/    "color": "38;2;56;112;126",/' ~/.config/fastfetch/config.jsonc
sed -i '81s/.*/        active-color "#9cd9e0"/' ~/.config/niri/config.kdl
sed -i '38s/.*/    background-color: #38707e;/' ~/.config/waybar/style.css
sed -i '39s/.*/    border-color: #9cd9e0;/' ~/.config/waybar/style.css

killall waybar
waybar &

gowall convert ~/Pictures/Wallpaper/$first -t $theme
gowall convert ~/Pictures/Wallpaper/$second -t $theme

gowall convert ~/.config/fastfetch/grayscale.png --output ~/.config/fastfetch/filtered.png -t $theme

swww img -o "DP-1" ~/Pictures/gowall/$first --transition-type any --transition-fps 120
swww img -o "HDMI-A-1" ~/Pictures/gowall/$second --transition-type any --transition-fps 120

wal -ntei ~/Pictures/gowall/$first
openrgb -p ~/.config/OpenRGB/Blue.orp

clear
fastfetch
