#!/bin/bash

echo "Atualizando reposítorios.1.2.3..."
sudo xbps-install -S
echo -e "✔Succes\n"

echo "Atualizando sistema.1.2.3..."
sudo xbps-install -Suv -y
echo -e "✔Success\n"

echo "Atualizando reposítorio flatpak"
flatpak update -y
echo -e "✔Success\n"

echo "Limpeza de sistema pós-atualizações"
sudo xbps-remove -Oo -y
echo -e "✔Success\n"

echo -e "ATUALIZADO VOID LINUX!!\n"


