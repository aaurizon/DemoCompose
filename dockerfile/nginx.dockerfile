#FROM nginx:mainline-alpine
FROM nginx:mainline

ADD config/default.conf /etc/nginx/conf.d/
