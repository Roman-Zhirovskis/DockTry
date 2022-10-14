FROM python:3.10-slim

LABEL Roman Zhirov

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install --upgrade pip
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app/

RUN useradd user

USER user
