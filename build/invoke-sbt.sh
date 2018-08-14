#!/bin/bash

export SPARK_LOCAL_IP=127.0.0.1
DESIRED_JAVA_OPTS="-Xms2g -Xmx4g -Xss2m -XX:MaxMetaspaceSize=2g"
# Setting java options to two different environment variables to be compatible with
# different versions of the SBT launcher script
JAVA_OPTS=${DESIRED_JAVA_OPTS} JVM_OPTS=${DESIRED_JAVA_OPTS} sbt "$@"