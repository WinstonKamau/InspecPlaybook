FROM ubuntu:16.04

WORKDIR /workstation-home

COPY pip-requirements-test/ /workstation-home/pip-requirements-test

RUN apt-get -y update && apt-get -y install ssh sshpass ruby ruby-dev gcc g++ make

RUN gem install inspec
EXPOSE 22

ENTRYPOINT [ "sh" ]