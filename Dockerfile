FROM alpine:latest

RUN apk add build-base
RUN apk add --no-cache python3-dev
RUN apk add py3-pip

WORKDIR /app
COPY . /app

RUN pip3 --no-cache-dir install -r requirements.txt

EXPOSE 5000

ENTRYPOINT  ["python3"]

CMD ["application.py"]




