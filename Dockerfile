FROM ubuntu

RUN apt-get upgrade -y
RUN apt-get update -y

RUN apt-get install -y flex bison \
  build-essential csh libxaw7-dev vim

RUN mkdir /usr/class

RUN ln -s /usr/class/cs143/cool ~/cool

ENV PATH="/usr/class/cs143/cool/bin:${PATH}"
