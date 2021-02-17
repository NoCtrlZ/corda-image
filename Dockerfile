FROM ubuntu:16.04

RUN apt-get update &&\
    apt-get install software-properties-common sudo -y &&\
    sudo add-apt-repository ppa:webupd8team/java &&\
    sudo apt-get update &&\
    sudo apt-get install openjdk-8-jdk -y
