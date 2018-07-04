FROM alpine

RUN \
  apk update && \
  apk add nodejs git && \
  apk add bash && \
  apk add python2 py2-pip

RUN \ 
  apk add gcc && \
  apk add python-dev linux-headers musl-dev libffi-dev openssl-dev

RUN \
  pip install --upgrade pip && \
  pip install PyYAML PyMySQL

RUN \
  npm install -g yarn