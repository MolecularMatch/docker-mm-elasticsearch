FROM docker.elastic.co/elasticsearch/elasticsearch:6.1.2

COPY config/elasticsearch.yml /usr/share/elasticsearch/config/
ADD config/run.sh /usr/bin/

RUN chmod +x /usr/bin/run.sh

#Install plugins
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install repository-s3
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install discovery-ec2

CMD ["/usr/bin/run.sh"]
