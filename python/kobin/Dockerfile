FROM python:3.6.1-alpine

WORKDIR /app
ENV WSGICLI_HOST=0.0.0.0
RUN apk --update add --no-cache gcc libc-dev
RUN pip install --upgrade pip && pip install kobin wsgicli
COPY python/kobin/main.py /app
CMD wsgicli run main.py app
