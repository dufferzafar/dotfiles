# Generates a list of sublime text packages installed via package control.

for package in ~/.config/sublime-text-3/Installed\ Packages/*.sublime-package
do
  basename -s .sublime-package "$package"
done
