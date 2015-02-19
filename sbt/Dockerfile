FROM local/java8
 
#install sbt
#see https://registry.hub.docker.com/u/nightscape/docker-sbt/dockerfile/

ENV SBT_VERSION 0.13.7

RUN cd /vagrant
RUN mkdir -p /usr/local/bin
RUN mkdir ./temp 
RUN wget -P ./temp https://dl.bintray.com/sbt/native-packages/sbt/${SBT_VERSION}/sbt-${SBT_VERSION}.zip
RUN unzip ./temp/sbt-${SBT_VERSION}.zip -d ./temp
RUN ls ./temp/sbt
RUN cp ./temp/sbt/bin/* /usr/local/bin
RUN rm -rf ./temp


RUN chmod u+x /usr/local/bin/sbt

RUN sbt version

CMD ["sbt"]