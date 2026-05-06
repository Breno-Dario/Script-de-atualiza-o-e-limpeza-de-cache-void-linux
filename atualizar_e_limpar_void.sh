#!/bin/bash

echo "Atualizando reposítorios.1.2.3..."
sudo xbps-install -S
echo "✔Success"

echo "Atualizanfo sistema.1.2.3..."
sudo xbps-install -Suv -y
echo "✔Success"


echo "Limpando cache..."
sudo xbps-remove -O
echo "✔Success"


echo "Removendo dependência não utilizadas..."
sudo xbps-remove -o -y
echo "✔Success"


echo "Sistema limpo e atualizado!!"
