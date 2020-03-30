FROM python:3.5.3

COPY requirements.txt 
RUN pip install -r ./requirements.txt

COPY main.py

# ENTRYPOINT /bin/bash
EXPOSE 5000

ENV ENVIRONMENT local

ENTRYPOINT python ./main.py
