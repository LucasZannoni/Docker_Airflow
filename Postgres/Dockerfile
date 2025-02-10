##Puxando Imagem
From postgres:17-alpine

#Definindo Variáveis de Ambiente 

ENV POSTGRES_USER=admin
ENV POSTGRES_PASSWORD=admin
ENV POSTGRES_DB=mydb
ENV POSTGRES_ROOT_PASSWORD=root

COPY ./init.sql /docker-entrypoint-initdb.d/init.sql
