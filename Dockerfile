FROM docker.io/library/centos-zulu-jdk17-crac

WORKDIR /app

COPY . /app

ENV CRAC_FILES_DIR /opt/crac-files

RUN mvn clean package -DskipTests

ENTRYPOINT /app/src/scripts/entrypoint.sh