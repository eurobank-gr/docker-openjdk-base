FROM openjdk:8-slim
WORKDIR /tmp
ADD run.sh /run.sh
RUN chmod +x /run.sh
ENTRYPOINT ["/run.sh"]
CMD ["-version"]
