FROM python:3-alpine

# Set environment variables
ENV PYTHONUNBUFFERED 1

# Set work directory
RUN mkdir /code /data /staticfiles
WORKDIR /code
COPY requirements.txt /code/

# Install dependencies
RUN apk add build-base \
            zlib-dev \
            libjpeg-turbo-dev \
            postgresql-dev \
            mariadb-dev && \
    pip install -r requirements.txt
