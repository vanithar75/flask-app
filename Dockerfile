FROM python:3.8-slim-buster

RUN useradd -m app

WORKDIR /flask-app

COPY requirements.txt .


RUN pip install -r requirements.txt 

COPY ./app ./app 

USER app

CMD ["python", "./app/app.py"]
