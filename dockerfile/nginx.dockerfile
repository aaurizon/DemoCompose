#FROM nginx:mainline-alpine
FROM nginx:mainline

ADD config/nginx.conf /etc/nginx/conf.d
