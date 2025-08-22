FROM apache/airflow:2.9.1

USER root
WORKDIR /opt/airflow

# Copy requirements
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

USER airflow
