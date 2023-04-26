FROM alpine
# download HBase
RUN cd /opt
RUN wget https://dlcdn.apache.org/hbase/2.5.3/hbase-2.5.3-bin.tar.gz
RUN tar xzvf hbase-2.5.3-bin.tar.gz
WORKDIR hbase-2.5.3
# install Java 1.8
RUN apk add openjdk8
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk
# run HBase (with Thrift interface)
RUN apk add bash
COPY run.sh .
CMD ./run.sh
# expose HBase master, dashboard and Thrift interface
EXPOSE 16000 16010 9090
