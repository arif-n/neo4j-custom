FROM adoptopenjdk/openjdk11

RUN mkdir neo4j
COPY . /neo4j


ENV NEO4J_HOME="/neo4j"
ENV NEO4J_AUTH=none
ENV HDFS_HOST=hdfs://hdfs:9000
ENV PATH "${NEO4J_HOME}"/bin:$PATH


EXPOSE 7474 7473 7687

CMD [ "neo4j", "console" ]