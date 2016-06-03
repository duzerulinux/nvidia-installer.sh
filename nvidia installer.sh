#!/bin/bash
# Nvidia Proprietary Installer-Jessie
# GNU Public License V.3
echo "Este driver proprietário suporta GeForce 8xxx e superior GPUs"
echo "Se o modelo for diferente, favor abortar a instalação"
echo "pressionando control+c ou fechando esta janela do Terminal"
echo "Em seguida, você deve instalar o driver proprietário Nvidia correto"
sleep 20
echo "Atualizando o repositório [aguarde...]"
sleep 2
sudo apt-get update update
sleep 2
echo "No final desta instalação o Xorg vai reclamar que você"
echo "não tem um arquivo xorg"
echo "Por favor, ignore o aviso como nvidia- xorg está sendo instalado"
sleep 5
sudo aptitude -r install linux-headers-$(uname -r|sed 's,[^-]*-[^-]*-,,') nvidia-kernel-dkms
sleep 2
sudo aptitude install nvidia-xconfig
sleep 2
sudo nvidia-xconfig
echo "É necessário reiniciar a fim de aplicar as alterações"
echo "Após a reinicialização você vai encontrar o aplicativo Configurações Nvidia"
echo "em Sistema no menu principal"
sleep 7
sudo reboot

