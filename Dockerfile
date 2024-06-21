FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt


EXPOSE 8000

COPY . /app/

RUN chmod +x /app/start.sh
CMD ["sh","/app/start.sh"]
