# Instalamos kubectl:
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
kubectl version --client

# Instalamos Minikube:
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube && rm minikube-linux-amd64

# Creamos el cluster:
minikube start --memory 2048

# Borramos el cluster y lo creamos nuevamente especificando un CNI:
minikube start --network-plugin=cni --cni=calico --memory=2048