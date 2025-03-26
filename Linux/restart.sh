#!/bin/bash
airflow db migrate
rm -f /home/ubuntu/airflow/airflow-webserver.pid
airflow scheduler & airflow webserver
