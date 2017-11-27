FROM openjdk:slim
WORKDIR /tmp
ENTRYPOINT ["java", \
  "-XshowSettings", \
  "-XX:+UseG1GC", \
  "-XX:+ExitOnOutOfMemoryError", \
  "-XX:MaxRAMFraction=1", \
  "-XX:+UnlockExperimentalVMOptions", \
  "-XX:+UseCGroupMemoryLimitForHeap", \
  "-Duser.dir=/tmp"]
CMD ["-version"]
