FROM python:3.6.1-alpine

ADD requirements.txt .
RUN pip3 install -r requirements.txt
RUN apk update && \
    apk add bash && \
	apk add make

ENV APP_DIR /app
RUN mkdir $APP_DIR
VOLUME $APP_DIR
WORKDIR $APP_DIR

