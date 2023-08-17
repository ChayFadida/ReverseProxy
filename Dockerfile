FROM nginx:stable-alpine


COPY ./nginx/conf.d /etc/nginx/conf.d
COPY ./nginx/nginx.conf /etc/nginx/nginx.conf
RUN apk update \
    && apk upgrade \ 
    && apk add certbot certbot-nginx


RUN echo '* * 1,7,14,21,28 * * /usr/bin/certbot renew --quiet' >> /etc/crontabs/root