#! /bin/bash
## Instalando o básico do Gnome: GDM, Gnome-Shell, Gnome Console e o Gnome Control Center
sudo pacman -S --noconfirm gdm gnome-shell gnome-console gnome-control-center
sudo systemctl enable gdm

## Instalando o Seletor de Perfil de Energia e a Impressora/Scanner
sudo pacman -S --noconfirm power-profiles-daemon system-config-printer cups sane
sudo systemctl enable cups
sudo systemctl enable bluetooth

## Instalando o Flatpak e alguns aplicativos dessa forma
sudo pacman -S --noconfirm flatpak
sudo flatpak install -y --noninteractive org.mozilla.firefox org.bluesabre.MenuLibre org.gnome.Weather org.gnome.clocks org.gnome.Calendar org.gnome.Loupe org.gnome.Music org.gnome.Totem org.gnome.Calculator org.gnome.TextEditor

## Instalando alguns extras
sudo pacman -S --noconfirm webp-pixbuf-loader gnome-software sushi gnome-system-monitor gnome-disks baobab


