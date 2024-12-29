#!/usr/bin/env bash
set -e

instalarGnomeMini () {
	## Instalando o básico do Gnome: GDM, Gnome-Shell, Gnome Console e o Gnome Control Center
	echo -e "\nInstalando o GDM, Gnome Shell, Console e o Gnome Control Center e os demais pacotes básicos do Gnome e do Wayland\n"
	sleep 2
	pacman -S --noconfirm gdm gnome-shell gnome-console gnome-control-center

	echo -e "\nHabilitando o GDM\n"
	systemctl enable gdm
}

instalarLaptopImpressoraScanner () {
	## Instalando o Seletor de Perfil de Energia e a Impressora/Scanner
	echo -e "\nInstalando o Seletor de Perfil de Energia, a Impressora e o SANE\n"
	sleep 2
	pacman -S --noconfirm power-profiles-daemon system-config-printer cups sane
}

instalarFlatpak () {
	echo -e "\nInstalando o Flatpak\n"
	pacman -S --noconfirm flatpak
	echo -e "\nInstalando alguns aplicativos \n	- Firefox \n	- MenuLibre \n	- Visualizador de Imagens Loupe\n	- Gnome Music\n	- Totem\n	- Calculadora\n	- Editor de Texto"
	sleep 2
	flatpak install -y --noninteractive org.mozilla.firefox org.bluesabre.MenuLibre org.gnome.Loupe org.gnome.Music org.gnome.Totem org.gnome.Calculator org.gnome.TextEditor
}

instalarExtras () {
## Instalando alguns extras
echo -e "\nInstalando a visualização de arquivos em .webp, a Gnome Software, o Monitor do Sistema, o Gerenciador de Discos, o Analisador de Espaço em Disco e o Sushi\n"
sleep 2
pacman -S --noconfirm webp-pixbuf-loader gnome-software sushi gnome-system-monitor gnome-disks baobab
}

flatpakExtraGnome () {
	echo -e "\nInstalando alguns Extras:\n	- Meteorologia\n	- Relógio\n	- Calendário"
	flatpak install -y org.gnome.Weather org.gnome.clocks org.gnome.Calendar
}


echo -e "\nHabilitando o CUPS\n"
systemctl enable cups

echo -e "\nHabilitando o Bluetooth\n"
systemctl enable bluetooth

instalarGnomeMini
instalarFlatpak
flatpakExtraGnome
instalarLaptopImpressoraScanner
instalarExtras
