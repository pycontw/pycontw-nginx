FROM nginx:latest

RUN rm /etc/nginx/conf.d/default.conf
COPY ./conf /etc/nginx/conf.d
RUN apt-get update && apt-get install -y git && \
  cd /opt && \
  git clone https://github.com/MozixReality/PyconWeb.git

