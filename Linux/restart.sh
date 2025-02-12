#!/bin/bash
airflow db migrate
airflow scheduler & airflow webserver
