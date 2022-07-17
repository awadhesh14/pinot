FROM openjdk:11

WORKDIR /app

ENV PINOT_VERSION=0.10.0

RUN wget https://downloads.apache.org/pinot/apache-pinot-$PINOT_VERSION/apache-pinot-$PINOT_VERSION-bin.tar.gz
RUN tar -zxvf apache-pinot-$PINOT_VERSION-bin.tar.gz
RUN mv apache-pinot-$PINOT_VERSION-bin pinot
EXPOSE 9000