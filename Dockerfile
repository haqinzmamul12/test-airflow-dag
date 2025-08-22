FROM apache/airflow:2.9.0

WORKDIR /opt/airflow

# Copy DAGs
COPY dags/ ./dags/
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt
