FROM python:stretch
ENV PYTHONUNBUFFERED 1

# Requirements are installed here to ensure they will be cached.
COPY ./requirements.txt /
RUN pip3 install -r /requirements.txt

WORKDIR /home/worldclim
