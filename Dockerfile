FROM apache/airflow:2.9.0 

USER root 

USER airflow

COPY requirements.txt /requirements.txt

RUN pip install --no-cache-dir -r requirements.txt




