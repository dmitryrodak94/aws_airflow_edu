FROM python:3.10.0
FROM apache/airflow:3.0.3

USER root
RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    libabsl-dev \
    && apt-get clean

USER airflow
COPY requirements.txt /requirements.txt
RUN pip install --no-cache-dir -r /requirements.txt


