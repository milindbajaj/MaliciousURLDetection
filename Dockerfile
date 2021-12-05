FROM alpine:latest

RUN apk add --no-cache python
RUN apk add py-pip

WORKDIR /app

COPY . /app

RUN pip --no-cache-dir install -r requirements.txt

ENTRYPOINT  ["python3"]

CMD ["app.py"]