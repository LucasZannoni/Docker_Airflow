# Docker & Airflow

## Propósito Desta Repo

Esta Repo tem como propósito facilitar o acesso para uso educacional à plataforma Apache Airflow. 

Este software é muito utilizado pela comunidade de dados devido à sua facilidade para automatizar a execução de scripts python e orquestrar pipelines de dados. 

Uma dificuldade associada a esta ferramenta, porém, está relacionada ao seu setup inicial. Como se trata de uma ferramenta open-source e com a instalação baseada em sistemas linux, podem ocorrer diversos problemas durante a instalação e configuração dos serviços, cuja solução não é amigável ao usuário que não possui familiaridade com sistemas linux, comandos em bash, configurações básicas e conexão com bases de dados relacionais (SQLite, Postgres, Mysql, dentre outras).

Neste sentido, o propósito desta Repo consiste em fornecer um acesso fácil à instalação desta ferramenta através do uso de containeres Docker.Com a conteinerização, o deploy desta aplicação é facilitado substancialmente, permitindo o uso e aprendizado por parte do usuário mais iniciante, que pode dedicar seu foco e energia iniciais no entendimento da própria ferramenta.

## Airflow - Introdução à Ferramenta

A execução automatizada e orquestrada de tasks é essencial para garantir eficiência, escalabilidade e confiabilidade em processos de dados e workflows complexos. 

Nesse contexto, o Apache Airflow se destaca como uma ferramenta poderosa para orquestração de workflows, oferecendo uma interface flexível para definir, monitorar e gerenciar pipelines de dados. Com suporte a dependências entre tasks, agendamento dinâmico e escalabilidade, o Airflow tem se tornado uma escolha popular entre usuários de dados para a orquestração de seus pipelines.

## Docker - Contêineres

O Docker Engine, por sua vez, se trata de uma ferramenta open source para a conteinerização de aplicações, podendo ser utilizado em várias áreas do TI, como frontend, backend, Infraestrutura e Dados.

Um conteiner consiste no empacotamento de uma aplicação e todas as suas dependências em uma unidade padrão para reprodução. Ele auxilia na hora de padronizar o deploy de aplicativos, uma vez que roda da mesma forma independente do sistema que seja realizado o deploy, permitindo que rodemos o nosso app de maneira leve, rápida e padronizada.

Esta repo pode ser considerada um bom exemplo de conteiner, onde desejamos rodar as funcionalidades básicas do Apache Airflow (Scheduler e Webserver) de maneira rápida e fácil, sem maiores preocupações com setup.