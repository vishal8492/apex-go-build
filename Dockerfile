FROM golang:1.9.2-stretch
RUN curl https://raw.githubusercontent.com/apex/apex/master/install.sh | sh && apex upgrade
RUN apt-get update
RUN apt-get install -y curl python-pip
RUN pip install --upgrade pip
RUN pip install awscli
RUN pip install awscurl
