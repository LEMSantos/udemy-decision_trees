FROM jupyter/minimal-notebook

USER root
WORKDIR /home

RUN apt-get update \
  && apt-get upgrade -y \
  && apt-get install -y apt-utils

RUN apt-get install -y gnupg \
  zlibc \
  build-essential

RUN apt-get install -y graphviz

COPY requirements.txt ./

RUN pip install -r requirements.txt
