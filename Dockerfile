FROM ubuntu:16.04

RUN apt-get update &&\
    apt-get install software-properties-common sudo git -y &&\
    sudo add-apt-repository ppa:webupd8team/java &&\
    sudo apt-get update &&\
    sudo apt-get install openjdk-8-jdk -y

RUN git clone https://github.com/corda/cordapp-example.git

RUN cd cordapp-example &&\
    ./gradlew deployNodes

EXPOSE 10009

ENTRYPOINT ./cordapp-example/kotlin-source/build/nodes/runnodes &&\
           sleep 5000
