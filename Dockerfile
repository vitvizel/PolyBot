FROM python:3.8.12-slim-buster

WORKDIR /app


COPY requirements.txt .

COPY .telegramToken .

RUN pip3 install -r requirements.txt

COPY . .

CMD ["python3", "bot.py"]