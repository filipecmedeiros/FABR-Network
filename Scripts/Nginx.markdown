## 1. Docker
O Docker é uma plataforma de containers de software, que seriam basicamente uma maneira de se "empacotar" software em um formato que possam ser executados de maneira isolada em relação ao sistema operacional, diferente de máquinas virtuais, que acoplam um sistema operacional completo. 

Utilizamos o Docker para eliminar os problemas relacionados ao famoso caso de "funciona na minha máquina", pois sua execução independe do sistema operacional do usuário, garantindo que o sistema vai ser executado de maneira eficiente e da mesma maneira todas as vezes que alguém executá-lo.

## 1.1 Instalação do Docker:

O Docker possui um Daemon para gerenciamento de containers. Sua instalação possui uma documentação oficial e pode ser conferida nas páginas:

[Instalando Docker no Windows](https://docs.docker.com/docker-for-windows/)

[Instalando Docker no Mac OSX](https://docs.docker.com/docker-for-mac/)

[Instalando Docker no Ubuntu](https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/)

## 2. Importando container Docker do Amadeus LMS

Com o Docker instalado, é possível importar uma imagem pré-configurada do Amadeus LMS com os seguintes comandos:

Baixe a imagem diretamente do repositório do Amadeus LMS:
**Caso esteja usando windows, não é necessário o comando 'sudo' **
``` bash
sudo docker pull filipecmedeiros/amadeus:1.0
```
Execute o container:
``` bash
sudo docker run -itp 8000:80 filipecmedeiros/amadeus:1.0
```
Inicie o banco de dados Postgres e o servidor web Nginx:
``` bash
/etc/init.d/postgresql start
/etc/init.d/nginx start
``` 

Obs.: Espere até o servidor iniciar.

Execute o Amadeus:
``` bash
cd /home/amadeuslms/
gunicorn amadeus.wsgi:application
```

Para sair do docker e continuar com o Amadeus LMS executando no container só é preciso apertar crtl + p + q.

## 3. Exportando container Docker com Amadeus

Para gerar sua própria imagem do Amadeus, disponibilizamos um exemplo utilizando Ubuntu 16.04 LTS + Postgres + Nginx:

### 3.1 Preparando o container
Faça o download de uma imagem do ubuntu:
``` bash
sudo docker pull ubuntu:16.04
```
Execute o container a partir da imagem do ubuntu que acabou de ser baixada:
``` bash
sudo docker run -itp 8000:80 ubuntu:16.04
```
Antes de tudo, é necessário fazer um update para poder fazer o download de qualquer software:
``` bash
apt-get update
```
A linguagem padrão utilizada é ASC II, faça a migração para UTF-8:
``` bash
export LANG=C.UTF-8
```
Após estes passos, o container está preparado para fazer o download dos softwares e dependências
necessárias:
``` bash
apt-get install nano gettext nginx python3 python3-pip git postgresql postgresql-contrib libpq-dev
python3-dev
```
Inicie o banco de dados Postgres:
``` bash
/etc/init.d/postgresql start
```
Inicie o servidor web Nginx:
``` bash
/etc/init.d/nginx start
```
### 3.2 Preparando o banco de dados Postgres

Faça login como usuário admin do Postgres:
``` bash
su postgres
```
Crie um banco de dados:
``` bash
createdb amadeus
```
Para executar comandos SQL, utilize o comando:
```bash
psql
```
Então execute o comando para criar um usuário do Amadeus no banco de dados:
``` sql
CREATE ROLE amadeus_admin WITH LOGIN SUPERUSER PASSWORD 'amadeus';
```
Para sair, execute:
``` sql
\q
```
E em seguida, para sair do usuário Postgres:
``` bash
exit
```
### 3.3 Preparando o Amadeus
Faça o download do Amadeus a partir do repositório git:
``` bash
git clone https://github.com/amadeusproject/amadeuslms.git
```
Crie um arquivo chamado local_settings.py no diretório /amadeuslms/amadeus/ :
```bash
nano /amadeuslms/amadeus/local_settings.py
```
E adicione os valores do banco de dados que acabou de ser criado:
``` python
import os
DEBUG = True
DATABASES = {
	'default': {
	'ENGINE': 'django.db.backends.postgresql',
	'NAME': 'amadeus',
	'USER': 'amadeus_admin',
	'PASSWORD': 'amadeus',
	'HOST': '127.0.0.1',
	'PORT': '5432',
	}
}
 ```
Instale as dependências do Amadeus LMS:
``` bash
pip3 install -r requirements.txt
```
Aplique as migrações do Amadeus LMS ao banco de dados:
```bash
cd amadeuslms/
python3 manage.py migrate
```
Ative as configurações de tradução do Amadeus:
```bash 
python3 manage.py compilemessages
```
Crie o usuário Admin do Amadeus:
``` bash
python3 manage.py createsuperuser
```
### 3.4 Preparando o Nginx
Para fazer a configuração do Nginx, edite o arquivo default localizado em /etc/nginx/sitesavaliables e adicione as configurações:
``` bash
nano /etc/nginx/sites-avaliables/default
```
``` bash
upstream backend {
 server localhost:8000;
}
server {
 listen 80 default_server;
 listen 443 ssl;
 server_name _;

 root /home/amadeuslms;
 index index.html;
 charset utf-8;
 location / {
 try_files $uri @proxy_to_app;
 }
 location /uploads {
 autoindex on;
 alias /home/amadeuslms/amadeus/uploads/;
 }
 location @proxy_to_app {
 proxy_pass http://backend;
 proxy_http_version 1.1;
 proxy_set_header Upgrade $http_upgrade;
 proxy_set_header Connection "upgrade";
 proxy_set_header Host $http_host;
 }
}
```

Para executar o Amadeus LMS:
``` bash
cd /home/amadeuslms/
gunicorn amadeus.wsgi:application
```

Para sair do docker e continuar com o Amadeus LMS executando no container só é preciso apertar crtl + p + q.