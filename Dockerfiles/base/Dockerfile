FROM centos:latest

ARG JAVA_URL=https://cdn.azul.com/zulu/bin/zulu17.48.15-ca-crac-jdk17.0.10-linux_x64.tar.gz

ARG MAVEN_URL=https://dlcdn.apache.org/maven/maven-3/3.9.6/binaries/apache-maven-3.9.6-bin.tar.gz

ENV PATH=$PATH:/opt/java/zulu17.48.15-ca-crac-jdk17.0.10-linux_x64/bin:/opt/java/apache-maven-3.9.6/bin

RUN mkdir /opt/java

RUN curl ${JAVA_URL} | tar -xz -C /opt/java/

RUN curl ${MAVEN_URL} | tar -xz -C /opt/java/

RUN chown root:root /opt/java/zulu17.48.15-ca-crac-jdk17.0.10-linux_x64/lib/criu

RUN chmod u+s /opt/java/zulu17.48.15-ca-crac-jdk17.0.10-linux_x64/lib/criu