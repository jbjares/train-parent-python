FROM frolvlad/alpine-python-machinelearning:latest

WORKDIR /tmp
RUN apk update --no-cache -U && \
    apk add --no-cache -U --virtual .builddeps \
      git && \
    git clone https://github.com/PersonalHealthTrain/train-api-python.git && \
    cd train-api-python && \
    python setup.py install && \
    cd .. && \
    apk --purge del .builddeps && \
    rm -rf /tmp/* /var/tmp/*
