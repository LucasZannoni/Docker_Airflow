##Puxando Imagem
From ubuntu:24.10

#Definindo Variáveis de Ambiente 

WORKDIR /home/ubuntu/airflow

RUN apt update -y \
&& apt upgrade -y && apt-get install sudo -y \
&& ln -fs /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime \
&& DEBIAN_FRONTEND=noninteractive apt-get install tzdata -y \
&& sudo apt-get install python3.12 -y python3.12-venv -y \
&& sudo apt install libpq-dev -y \
&& sudo apt install python3-pip -y \ 
&& sudo apt install nano\
&& apt-get install -y bash


RUN  python3 -m venv /home/ubuntu/airflow/venv
ENV PATH="/home/ubuntu/airflow/venv/bin:$PATH"
ENV AIRFLOW__CORE__EXECUTOR = "LocalExecutor"
ENV AIRFLOW__CORE__AUTH_MANAGER= "airflow.providers.fab.auth_manager.fab_auth_manager.FabAuthManager"
ENV AIRFLOW__DATABASE__SQL_ALCHEMY_CONN = "postgresql+psycopg2://postgres:postgres@db:5432/postgres"
ENV AIRFLOW__CORE__LOAD_EXAMPLES = "False"

RUN pip install apache-airflow['postgresql']==3.0.2
RUN pip install apache-airflow-providers-fab
RUN pip install psycopg2
RUN pip install asyncpg

##Define Airflow Home
ENV AIRFLOW_HOME=/home/ubuntu/airflow


RUN mkdir dags
RUN mkdir libs
RUN mkdir credentials


COPY startup.sh /home/ubuntu/airflow/startup.sh
COPY restart.sh /home/ubuntu/airflow/restart.sh

RUN sed -i 's/\r//g' /home/ubuntu/airflow/restart.sh
RUN sed -i 's/\r//g' /home/ubuntu/airflow/startup.sh

RUN chmod +x /home/ubuntu/airflow/startup.sh
RUN chmod +x /home/ubuntu/airflow/restart.sh

ENTRYPOINT ["bash", "-c", "/home/ubuntu/airflow/restart.sh & tail -f /dev/null"]
