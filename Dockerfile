# generado inicialmente con comando
# export APPNAME=bicimad_node && py2txt ~/dropbox/learning/docker.py | bash 
# FROM ubuntu:18.04 
FROM node:8-jessie 
  # mejor una especificacion concreta, que ubuntu:lastest
    
RUN apt-get update 
# por orden alfabetico 
# RUN apt-get install -y   # libfile-tee-perl   # libfile-tee-perl 
RUN rm -rf /var/lib/apt/lists/*
# copy app directory do /usr/src/app
COPY . /usr/src/app
WORKDIR /data
# se invoca a esta app al llamar a docker run bicimad_node
ENTRYPOINT /usr/src/app/bicimad_node
# CMD [] permite que funcione el paso de parametros a ENTRYPOINT
CMD []
# EXPOSE 3000
