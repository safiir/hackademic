FROM tutum/lamp:latest

MAINTAINER polymo <809320935@qq.com>

COPY . /tmp/hackademic

RUN rm /tmp/hackademic/Dockerfile && \
    rm -rf /app/*  && \
    cp -r /tmp/hackademic/* /app/ && \
    chown www-data:www-data -R /app/ && \
    rm -rf /tmp/hackademic
