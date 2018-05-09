FROM openjdk:8u171-slim

WORKDIR /tmp

COPY run-java.sh /
RUN chmod 755 /run-java.sh

ENTRYPOINT ["/run-java.sh"]
CMD ["options"]
