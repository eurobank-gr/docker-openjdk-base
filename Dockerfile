FROM openjdk:slim
WORKDIR /tmp
ENTRYPOINT ["java", \
  "-XshowSettings", \
  "-XX:+UseG1GC", \
  "-XX:+ExitOnOutOfMemoryError", \
  "-XX:+UnlockExperimentalVMOptions", \
  "-XX:+UseCGroupMemoryLimitForHeap", \
  "-Duser.dir=/tmp"]
CMD ["-version"]
