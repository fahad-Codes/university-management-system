FROM ubuntu:latest
LABEL authors="fahadshafique"
FROM python:3.11

WORKDIR /app

COPY requirements.txt /app/

RUN pip install --no-cache-dir -r requirements.txt

COPY . /app/

ENV PYTHONUNBUFFERED 1

EXPOSE 8000

CMD ["python", "userInformationManagementBE/manage.py", "runserver", "0.0.0.0:8000"]

