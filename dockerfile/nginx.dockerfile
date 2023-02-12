# escape=\
FROM nginx:mainline
#FROM nginx:mainline-alpine

LABEL name=MyCustomNginx
LABEL description="Hello world from description!"
LABEL version=1.0.0
LABEL com.aaurizon.test="Just a little bit demo"

ENV WORKSPACE=/srv/http
ENV SECRET_USER=hello
ENV SECRET_PASS=world
ARG custom=defaultValue

WORKDIR $WORKSPACE

COPY . ${WORKSPACE}

ADD config/nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
#EXPOSE 80/tcp
#EXPOSE 80/udp

#RUN mkdir /myvol
#RUN echo "hello world" > /myvol/greeting
#VOLUME /myvol

RUN echo "Hello world!"
