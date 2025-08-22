from airflow import DAG
from airflow.operators.bash import BashOperator
from datetime import datetime

with DAG(
    "test_dag",
    start_date=datetime(2023, 1, 1),
    schedule_interval=None,
    catchup=False,
) as dag:

    task1 = BashOperator(
        task_id="print_hello",
        bash_command="echo 'Hello from Task 1!'"
    )

    task2 = BashOperator(
        task_id="print_world",
        bash_command="echo 'Hello from Task 2!'"
    )

    task1 >> task2
