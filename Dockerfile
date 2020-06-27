# use latest from ubuntu
FROM ubuntu:latest

# update repo
RUN apt-get -y update

# install modules
RUN apt-get -y install pipenv
RUN python3 -m pip install gunicorn

# copy entrypoint into container/image
COPY ./docker-entrypoint.sh /docker-entrypoint.sh

# set entry point for docker
ENTRYPOINT ["/docker-entrypoint.sh"]
