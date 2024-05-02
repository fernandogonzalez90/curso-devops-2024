#Instalar ngrok para probar el webhook de Github
curl -s https://ngrok-agent.s3.amazonaws.com/ngrok.asc \
	| sudo tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null \
	&& echo "deb https://ngrok-agent.s3.amazonaws.com buster main" \
	| sudo tee /etc/apt/sources.list.d/ngrok.list \
	&& sudo apt update \
	&& sudo apt install ngrok

#Configurar token de ngrok
ngrok config add-authtoken SU_TOKEN

#URL para Github de ejemplo para un proyecto de tipo multibranch pipeline:
#https://f6a5-190-30-107-111.ngrok-free.app/multibranch-webhook-trigger/invoke?token=demo-token

#Si el proyecto fuera de tipo pipeline:
#https://262f-181-4-33-51.ngrok.io/github-webhook/
