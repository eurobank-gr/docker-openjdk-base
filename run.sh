#!/bin/bash

#################################################################################
# Entrypoint for running java applications allowing JAVA_OPTIONS to be defined
# at runtime.
#
# By default the java application is executed using DEFAULT_JAVA_OPTIONS
#
# DEFAULT_JAVA_OPTIONS may be overriden during runtime if JAVA_OPTIONS is defined.
#
#
################################################################################
DEFAULT_JAVA_OPTIONS="-XshowSettings \
 -XX:+UseG1GC \
 -XX:+ExitOnOutOfMemoryError \
 -XX:MaxRAMFraction=2 \
 -XX:+UnlockExperimentalVMOptions \
 -XX:+UseCGroupMemoryLimitForHeap \
 -Duser.dir=/tmp "

RUN_ARGS=$DEFAULT_JAVA_OPTIONS
if [ ! -z $JAVA_OPTIONS ]; then
 RUN_ARGS=$JAVA_OPTIONS
fi

java $RUN_ARGS $@
