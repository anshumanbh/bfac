FROM ubuntu:16.04
LABEL maintainer="Anshuman Bhartiya"

RUN apt-get update

RUN apt-get install -y libldns-dev git build-essential wget python3 python python-setuptools python-dev
RUN easy_install pip

WORKDIR /

RUN git clone https://github.com/anshumanbh/bfac.git

WORKDIR /bfac
RUN pip install -r requirements.txt
RUN python setup.py install

ENTRYPOINT ["bfac"]
