echo "██████╗ ██████╗ ██████╗ 
██╔══██╗██╔══██╗██╔══██╗
██████╔╝██║  ██║██████╔╝
██╔═══╝ ██║  ██║██╔══██╗
██║     ██████╔╝██║  ██║
╚═╝     ╚═════╝ ╚═╝  ╚═╝
                        "
echo "//////////////////////////"
echo "-------------------------"
echo "Instalando Flatpak..."
sudo apt update
sudo apt install flatpak -y
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
echo "-------------------------"
echo "Instalando FreeCAD..."
sudo apt update
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install --or-update -y flathub org.freecadweb.FreeCAD
echo "-------------------------"
echo "Instalando Blender..."
sudo apt update
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install --or-update -y flathub org.blender.Blender
echo "-------------------------"
echo "Instalando Discord..."
sudo apt update
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install --or-update -y flathub com.discordapp.Discord
echo "-------------------------"
echo "Instalando UGS..."
mkdir -v -p ~/Downloads/UGS_build && cd ~/Downloads/UGS_build
wget https://ugs.jfrog.io/artifactory/UGS/v2.0.12/ugs-platform-app-linux.tar.gz
tar -xvf ugs-platform-app-linux.tar.gz
mv -i ugsplatform-linux ~/UGS
touch ~/.local/share/applications/UGS.desktop
echo '[Desktop Entry]
Name=Universal Gcode Sender
Exec=~/UGS/bin/ugsplatform
Type=Application
StartupNotify=true
Categories=Office;Utility;Development' >> ~/.local/share/applications/UGS.desktop
cd ~
echo "-------------------------"
echo "Instalando Ultimaker Cura..."
sudo apt update
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install --or-update -y flathub com.ultimaker.cura
echo "-------------------------"
echo "Instalando PrusaSlicer..."
sudo apt update
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install --or-update -y flathub com.prusa3d.PrusaSlicer
echo "-------------------------"
echo "Instalando Repetier-Host..."
mkdir -p ~/Repetier-Host && cd ~/Repetier-Host
wget https://download3.repetier.com/files/host/linux/Repetier-Host-x86_64-2.2.4.AppImage
chmod +x Repetier-Host-x86_64-2.2.4.AppImage
echo ">>>> Executando o Repetier-Host para salvar-lo no menu..."
./Repetier-Host-x86_64-2.2.4.AppImage
echo "-------------------------"
echo "Instalando LaserWeb..."
mkdir -v -p ~/LaserWeb && cd ~/LaserWeb
wget https://github.com/LaserWeb/LaserWeb4-Binaries/releases/download/untagged-4818330b6baa8213d4a7/laserweb-builder-v4.0.996-130-x86_64.AppImage
chmod +x laserweb-builder-v4.0.996-130-x86_64.AppImage
echo ">>>> Executando o LaserWeb para salvar-lo no menu..."
./laserweb-builder-v4.0.996-130-x86_64.AppImage
cd ~