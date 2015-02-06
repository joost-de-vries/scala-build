FROM ubuntu:14.04
 
# for oracle java 8
RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections 
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install software-properties-common
RUN DEBIAN_FRONTEND=noninteractive add-apt-repository -y ppa:webupd8team/java 
RUN apt-get update
RUN apt-get install -y oracle-java8-installer bash wget
RUN rm -rf /var/lib/apt/lists/* 
RUN rm -rf /var/cache/oracle-jdk8-installer

ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

#install sbt
#see https://registry.hub.docker.com/u/nightscape/docker-sbt/dockerfile/

ENV SBT_VERSION 0.13.7

RUN mkdir -p /usr/local/bin && wget -P /usr/local/bin/ http://repo.typesafe.com/typesafe/ivy-releases/org.scala-sbt/sbt-launch/$SBT_VERSION/sbt-launch.jar && ls /usr/local/bin

RUN touch /usr/local/bin/sbt

RUN echo SBT_OPTS="-Xms512M -Xmx1536M -Xss1M -XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=256M" >> /usr/local/bin/sbt
RUN echo java $SBT_OPTS -jar `dirname $0`/sbt-launch.jar "$@" >> /usr/local/bin/sbt

RUN chmod u+x /usr/local/bin/sbt





CMD ["bash"]