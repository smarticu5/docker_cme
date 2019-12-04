FROM ubuntu:latest

MAINTAINER Iain Smart <iain@iainsmart.co.uk>

RUN apt update && apt install -y libssl-dev libffi-dev python-dev python-pip build-essential
RUN pip install crackmapexec
# This should fail, but it will build the database
RUN cme smb 127.0.0.1 

ENTRYPOINT ["cme"]
