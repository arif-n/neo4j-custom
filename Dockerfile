FROM adoptopenjdk/openjdk11

RUN apt-get -y update
RUN apt-get -y install git

RUN git clone https://github.com/arif-n/neo4j-custom.git
ENV NEO4J_HOME="/neo4j-custom"
ENV NEO4J_AUTH=none
ENV HDFS_HOST=hdfs://hdfs:9000
ENV PATH "${NEO4J_HOME}"/bin:$PATH
RUN [ "chmod", "+x", "//neo4j-custom/bin/neo4j" ]

EXPOSE 7474 7473 7687

CMD [ "neo4j", "console" ]