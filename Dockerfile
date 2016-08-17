# JSNAPY GIT on ubuntu 14.04 Docker
# by Tony Chan <tonychan@juniper.net>
FROM ubuntu:14.04
MAINTAINER Tony Chan <tonychan@juniper.net>
RUN apt-get update
RUN apt-get install -y --force-yes python-dev libxslt1-dev libssl-dev libffi-dev wget git
RUN wget https://bootstrap.pypa.io/get-pip.py -O - | python
RUN pip install urllib3[secure]
RUN pip install git+https://github.com/Juniper/jsnapy.git
