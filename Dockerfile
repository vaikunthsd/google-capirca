FROM python:3.9.10-alpine

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . /app

RUN pip install .

WORKDIR /data

ENTRYPOINT ["aclgen"]
