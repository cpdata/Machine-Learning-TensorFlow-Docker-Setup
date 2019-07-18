FROM tensorflow/tensorflow:0.9.0-devel

MAINTAINER Charles P. Cross "charlie@cpdatadesigns.com"

WORKDIR /tensorflow

ADD src .

RUN git pull
CMD cd /tensorflow && ./train.sh
