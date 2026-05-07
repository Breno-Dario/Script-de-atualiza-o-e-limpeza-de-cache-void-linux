<img align="left" width="100" height="100" hspace="15" alt="void-linux" src="https://github.com/user-attachments/assets/c9e7249e-090c-495c-8a04-01d5508e593d" />


# Script de atualização e limpeza de cache (Void Linux)
![Shell](https://img.shields.io/badge/Shell-✔️-red)
![License](https://img.shields.io/badge/License-MIT-lightgrey)
![Tests](https://img.shields.io/badge/Tests-✔️-green)
![void Linux](https://img.shields.io/badge/VOID-✔️-blue)


Este script em Bash automatiza tarefas comuns de manutenção no sistema utilizando de pacotes `xbps` (usado no void linux)

## ⚙️ Funcionalidades 

O script executa as seguinte estapas:

1. **Atualiza a lista de repositórios**
2. **Atualiza todos os pacotes do sistema**
3. **Limpa o cache de pacotes antigos**
4. **Exibe mensagens de status para cada etapa**

## 💻 Descrições dos comandos

1. Primeiro você deve criar um arquivo `.sh` do script que possa roda no void linux
   Exemplo: 

```nano
   nano atualizar_e_limpar_void.sh
```

2. Segundo adicionar o `bin/bash` para que os comnados seja reconhecido pelo terminal

```nano
  #!/bin/bash
```
 
3. Terceiro adicionar `echo` = (tipo String) com descrição da ação que será efetuada

```nano
   echo "Atualizando repositório..."
```
4. Quarto adicionar comando do próprio void como atualizar

```nano
  sudo xbps-install -S
```

 ## Script completo: 
 ```nano
#!/bin/bash

echo "Atualizando reposítorios.1.2.3..."
sudo xbps-install -S
echo "✔Success"

echo "Atualizando sistema.1.2.3..."
sudo xbps-install -Suv -y
echo "✔Success"


echo "Limpando cache..."
sudo xbps-remove -O
echo "✔Success"


echo "Removendo dependência não utilizadas..."
sudo xbps-remove -o -y
echo "✔Success"


echo "Sistema limpo e atualizado!!"
```
## 🛠️ Execução

Criando o script corretamente, você deve dar permisão de execução

```bash
chmod x+ atualizar_e_limpar_void.sh
```
Por fim pode executar o script dessa forma 
```bash
./atualizar_e_limpar_void.sh
```
