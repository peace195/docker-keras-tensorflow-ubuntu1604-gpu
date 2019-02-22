FROM tensorflow/tensorflow:latest-gpu-py3
MAINTAINER peace195 <binhtd.hust@gmail.com>

RUN apt-get -qq update && \
	apt-get -y dist-upgrade
RUN apt-get install -y --no-install-recommends \
	fonts-dejavu \
	gfortran \
	gcc
RUN apt-get -y install python3 python3-pip
RUN apt-get autoclean
RUN pip3 install --upgrade pip

# Fundamentals
RUN pip3 install --upgrade jupyter  \
	numpy \
	scipy \
	pandas \
	pillow \
	scikit-image


RUN pip3 install --upgrade pip
RUN pip3 install keras

WORKDIR /root/
