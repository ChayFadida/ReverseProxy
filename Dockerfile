FROM nginx:stable-alpine


COPY ./nginx/conf.d /etc/nginx/conf.d
COPY ./nginx/nginx.conf /etc/nginx/nginx.conf
COPY ./chay-techs.key /etc/nginx/ssl/chay-techs.key
COPY ./chay-techs.crt /etc/nginx/ssl/chay-techs.crt
RUN apk update \
    && apk upgrade