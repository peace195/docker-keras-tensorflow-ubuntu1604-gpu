FROM tensorflow/tensorflow:1.13.1-gpu-py3
MAINTAINER peace195 <binhtd.hust@gmail.com>

WORKDIR /root/
ADD . /root/

RUN apt-get autoclean
RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt


