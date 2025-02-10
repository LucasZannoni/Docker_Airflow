ln -fs /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime
DEBIAN_FRONTEND=noninteractive apt-get install -y tzdata
sudo apt install python3.12 -y python3.12-venv -y
sudo apt install libpq-dev -y
sudo apt install python3-pip -y 
python3 -m venv .venv
source .venv/bin/activate
python3 -m pip install apache-airflow['postgresql']
export AIRFLOW_HOME="/home/ubuntu/airflow"
<COPIAR O ARQUIVO AIRFLOW CFG NESTE STEP>
sudo apt install nano
pip install psycopg2
export PATH=$PATH:/home/your_user/.local/bin/
airflow db init
mkdir /home/ubuntu/airflow/dags
mkdir /home/ubuntu/airflow/libs
mkdir /home/ubuntu/airflow/credentials
airflow users create -r Admin -u admin -e admin@example.com -f admin -l user -p test