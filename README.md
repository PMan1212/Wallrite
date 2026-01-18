# Wallrite
A minimal TUI application for changing desktop wallpapers with hyprpaper.


This is an experimental application that I am primarily making for educational purposes and for fun, but if you find a use for it, good for you!

How it works: the program will be configured through a simple config file that will tell it where to find the wallpaper directory and the hyprpaper.conf file. The program will create a menu that lists all of the wallpapers in the wallpaper directory, preview the currently selected wallpaper, and allow the user to pick a new wallpaper to be displayed with either the arrow keys or the vim keys. The program will then overwrite the hyprpaper.conf file with the appropriate file names to change the wallpaper, before killing and reopening hyprpaper in order to display the new wallpaper.
