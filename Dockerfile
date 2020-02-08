FROM nvidia/cuda:10.1-cudnn7-devel-ubuntu18.04

RUN apt-get update -y && \
    apt-get install -y --no-install-recommends \
    wget build-essential gcc zlib1g-dev git \
    vim \
    libsm6 \
    libxrender1 \
    libxext6 \
    python3-dev \
    python3-pip \
    python3-setuptools \
    python3-wheel \
    libglib2.0-0 libsm6 libxrender1 libxext6

WORKDIR /usr/src/app

RUN pip3 install -U pip
RUN pip install pipenv
RUN export LC_ALL=C.UTF-8
RUN export LANG=C.UTF-8
RUN pip install mxnet-cu101
