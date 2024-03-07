# Instalar VB y Ubuntu.

# Instalar Virtualbox: https://www.virtualbox.org/wiki/Downloads
# Descargar ISO de Ubuntu: https://ubuntu.com/download/desktop
# Recursos recomendados para la VM: 6GB (6144 MB) de RAM, 3 procesadores, 60GB de disco.

# Instalar Guest Additions:

# En Virtualbox hace clic en dispositivos y luego en “insertar imagen de CD de los complementos de invitado” y luego correr:
sudo apt update 
sudo apt install -y build-essential linux-headers-$(uname -r)
sudo mount /dev/cdrom /media
cd /media
sudo ./VBoxLinuxAdditions.run
sudo reboot

# Instalar VSC:

# Descargar desde https://code.visualstudio.com/docs/setup/linux

sudo dpkg -i code_1.81.1-1691620686_amd64.deb 

# Crear directorio e inicializar repo:

mkdir curso-devops-2024-c3
cd curso-devops-2024-c3
git init

# Configurar git:
ssh-keygen
cat ~/.ssh/id_rsa.pub 

sudo apt install git
git config --global user.name "w3schools-test" 
git config --global user.email "test@w3schools.com"

# Agregar contenido al repositorio
git add --all
git commit -m "mensaje del commit"

# Instalar Python y pip:
sudo apt install -y python3-pip

# Correr la aplicación en Python de ejemplo:
pip install -r requirements.txt
python3 app.py

# Instalar Node y npm (opcional):
sudo apt install nodejs npm -y

# Correr aplicación con node (opcional):
npm install
node index.js

# Probar con curl:
apt install curl
curl localhost:5000
curl localhost:8080
