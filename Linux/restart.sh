#!/bin/bash
airflow db migrate
rm -f /home/ubuntu/airflow/airflow-webserver.pid
airflow scheduler & airflow dag-processor & airflow triggerer & airflow api-server
