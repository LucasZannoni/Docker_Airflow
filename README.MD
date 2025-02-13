# Docker & Airflow

Este repositório é dedicado ao deploy simplificado de uma aplicação Apache Airflow, utilizando a tecnologia de conteinerização Docker.

## Índice

- [Propósito](#propósito-deste-repositório)
- [Airflow - Introdução](#airflow---introdução-à-ferramenta)
- [Docker - Introdução](#docker---contêineres)
- [Conteúdo Deste Repositório](#conteúdo-desta-repo)
- [Conhecimentos Necessários](#conhecimentos-necessários)
- [Instalação - Windows](#instalação---windows)


## Propósito Deste Repositório

Esta Repo tem como propósito facilitar o acesso para uso educacional à plataforma Apache Airflow. 

Este software é muito utilizado pela comunidade de dados devido à sua facilidade para automatizar a execução de scripts python e orquestrar pipelines de dados. 

Uma dificuldade associada a esta ferramenta, porém, está relacionada ao seu setup inicial. Como se trata de uma ferramenta open-source e com a instalação baseada em sistemas linux, podem ocorrer diversos problemas durante a instalação e configuração dos serviços, cuja solução não é amigável ao usuário que não possui familiaridade com sistemas linux, comandos em bash, configurações básicas e conexão com bases de dados relacionais (SQLite, Postgres, Mysql, dentre outras).

Neste sentido, o propósito desta Repo consiste em fornecer um acesso fácil à instalação desta ferramenta através do uso de containeres Docker. Com a conteinerização, o deploy desta aplicação é facilitado substancialmente, permitindo o uso e aprendizado por parte do usuário mais iniciante, que pode dedicar seu foco e energia iniciais no entendimento da própria ferramenta.

## Airflow - Introdução à Ferramenta

A execução automatizada e orquestrada de tasks é essencial para garantir eficiência, escalabilidade e confiabilidade em processos de dados e workflows complexos. 

Nesse contexto, o Apache Airflow se destaca como uma ferramenta poderosa para orquestração de workflows, oferecendo uma interface flexível para definir, monitorar e gerenciar pipelines de dados. Com suporte a dependências entre tasks, agendamento dinâmico e escalabilidade, o Airflow tem se tornado uma escolha popular entre usuários de dados para a orquestração de seus pipelines.

## Docker - Contêineres

O Docker Engine, por sua vez, se trata de uma ferramenta open source para a conteinerização de aplicações, podendo ser utilizado em várias áreas do TI, como frontend, backend, Infraestrutura e Dados.

Um conteiner consiste no empacotamento de uma aplicação e todas as suas dependências em uma unidade padrão para reprodução. Ele auxilia na hora de padronizar o deploy de aplicativos, uma vez que roda da mesma forma independente do sistema que seja realizado o deploy, permitindo que rodemos o nosso app de maneira leve, rápida e padronizada.

Esta repo pode ser considerada um bom exemplo de conteiner, onde desejamos rodar as funcionalidades básicas do Apache Airflow (Scheduler e Webserver) de maneira rápida e fácil, sem maiores preocupações com setup.

## Conteúdo Deste Repositório

Este repositório é composto por 3 pastas, sendo estas:

1. **Database**: Imagem Docker e arquivos necessários para montagem da base de dados PostgresSQL necessária para o funcionamento do airflow.

2. **Linux**: Imagem Docker e arquvios necessários para a montagem do ambiente linux e instalação de dependências necessárias para o funcionamento do airflow.

3. **Airflow Files**: Pastas locais para inserção de arquivos a serem utilizados pelo airflow. Nelas, foram pré-definidos os espaços para dags, bibliotecas de usuário e arquivos com credenciais. Seu funcionamento e uso será explicado posteriormente.

4. **Images**: Pasta contendo as imagens utilizadas nesta repo. Ela não é necessária para a instalação do Apache Airflow.

## Conhecimentos Necessários

É esperado que, para utilizar esta solução, o usuário possua conhecimentos básicos em **git**, **github** e **execução de comandos no prompt** do sistema operacional.

## Instalação - Windows

Para a instalação no sistema operacional Windows, o usuário deve seguir os seguintes passos:

1.**Realize o Download e Instalação da Docke Engine:**

Para que possamos montar imagens Docker, precisamos baixar a sua engine, que pode ser obtida neste [link](https://www.docker.com/products/docker-desktop/).

- OBS: O link e layout do website podem mudar com o tempo. Garanta que está baixando a distribuição do Docker do website oficial da empresa.

![alt text](./Images/image-1.png)

2.**Crie uma fork deste projeto para seu próprio ambiente Github.**

![alt text](./Images/image.png)

3.**Baixe o repositório para seu ambiente local.**

4.**Abra o Prompt de Comando e Localize-o na pasta desta repo.**

Após abrir o CMD, você deve movê-lo para pasta correta com o seguinte commando:

   ```bash
   cd <caminho/para/a/pasta/da/repo>
   ```

5.**Inicie o progama Docker Desktop**

Após a inicialização, é importante aguardar que a a docker engine inicie. No momento da disponibilização desta repo, isto pode ser verificado no canto inferior esquerdo da aplicação.

![alt text](./Images/image-2.png)

5.**Realize o Build da Aplicação**

Para isso, será necessário inserir o seguinte comando no CMD.

   ```bash
   docker compose up
   ```

Aguarde a instalação das dependências e montagem das ./Images/imagens (pode levar alguns minutos dependendo da capacidade de sua máquina) e pronto! Você já deve ter em mãos uma aplicação multiconteiner do airflow, rodando.

6.**Teste sua Instalação**

O airflow, por padrão, pode ser acessado a partir da porta "8080" do localhost. Acesse o link e confira se é apresentada a tela de login da ferramenta.

    http://localhost:8080

Caso veja uma tela semelhante com a figura abaixo, parabéns! Sua instalação do Apache Airflow está completa!

![alt text](./Images/image-3.png)

- **Observações**
    - Esta build de Airflow está configurada para ser inicializada toda vez que a docker engine for desligada, caso não deseje isto, você pode executar o comando pause nos conteineres.
    - Da mesma forma, caso os mesmos não religuem de maneira automática, podem ser iniciados da mesma forma.
    - Uma dica para inicialização automática, seria configurar para que o programa Docker Desktop seja iniciado junto com o Windows. Isso fará com que seu Airflow também inicie automáticamente com a ativação de sua máquina.

![alt text](./Images/image-4.png)