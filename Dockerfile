FROM nginx:1.21.3

RUN rm /etc/nginx/conf.d/default.conf
COPY ./conf /etc/nginx/conf.d
