FROM ubuntu:14.04
 
# for oracle java 8
RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections 
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install software-properties-common
RUN DEBIAN_FRONTEND=noninteractive add-apt-repository -y ppa:webupd8team/java 
RUN apt-get update
RUN apt-get install -y oracle-java8-installer bash wget unzip
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* 
RUN rm -rf /var/cache/oracle-jdk8-installer

ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

