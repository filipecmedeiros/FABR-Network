# FABR-Network

Oficial web site for FABR Network

www.fabrnetwork.com


### Para executar PostgreSQL e PgAdmin em docker containers

```
docker pull postgres

docker pull dpage/pgadmin4

docker network create --driver bridge postgres-network

docker run --name postgres --network=postgres-network -e "POSTGRES_PASSWORD=SENHA" -p 5432:5432 -v /home/filipe/workspace/PostgreSQL:/var/lib/postgresql/data -d postgres

docker run --name pgadmin --network=postgres-network -p 15432:80 -e "PGADMIN_DEFAULT_EMAIL=EMAIL" -e "PGADMIN_DEFAULT_PASSWORD=SENHA" -d dpage/pgadmin4
```

### Instalação

```
brew install postgresql

virtualenv venv -p python3

source venv/bin/activate

pip install -r requirements.txt

```
