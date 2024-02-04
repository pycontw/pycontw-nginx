FROM nginx:1.21.3

ARG ENV

RUN rm /etc/nginx/conf.d/default.conf

COPY ./conf/${ENV}/ etc/nginx/conf.d
