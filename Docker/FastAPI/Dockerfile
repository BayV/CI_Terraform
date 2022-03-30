FROM python:3.8.8

WORKDIR /fastapi-webApplication

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY ./webapp ./webapp

CMD ["python","./webapp/main.py"]