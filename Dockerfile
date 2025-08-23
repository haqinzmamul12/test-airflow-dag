FROM apache/airflow:2.9.0 

WORKDIR /opt/airflow 

COPY . . 

RUN pip install --no-cache-dir -r requirements.txt


