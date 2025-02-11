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

RUN pip install apache-airflow['postgresql']
RUN pip install psycopg2

##Define Airflow Home
ENV AIRFLOW_HOME=/home/ubuntu/airflow


RUN mkdir dags
RUN mkdir libs
RUN mkdir credentials
RUN airflow db init
RUN airflow users create -r Admin -u admin -e admin@example.com -f admin -l user -p test

COPY airflow.cfg /home/ubuntu/airflow/airflow.cfg
COPY startup.sh /home/ubuntu/airflow/startup.sh
COPY restart.sh /home/ubuntu/airflow/restart.sh

ENTRYPOINT ["bash", "-c", "/home/ubuntu/airflow/restart.sh & tail -f /dev/null"]
