# Domine Apache Airflow. https://www.eia.ai/
from airflow import DAG
from airflow.providers.standard.operators.bash import BashOperator
from datetime import datetime

dag =  DAG('primeira_dag', description="Nossa primeira DAG",
        schedule=None,start_date=datetime(2023,3,5),
        catchup=False)

task1 = BashOperator(task_id="tsk1",bash_command="sleep 5",dag=dag )
task2 = BashOperator(task_id="tsk2",bash_command="sleep 5",dag=dag )
task3 = BashOperator(task_id="tsk3",bash_command="echo 'hello world'",dag=dag )

task1 >> task2 >> task3