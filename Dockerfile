FROM python:3.8-slim-buster

RUN groupadd --gid 15555 notroot \ 
    && useradd --uid 15555 --gid 15555 -ms /bin/false notroot\
    && chown -R notroot:notroot /home/notroot

WORKDIR /flask-app

COPY requirements.txt .

RUN pip install -r requirements.txt 

COPY ./app ./app 

CMD ["python", "./app/app.py"]
