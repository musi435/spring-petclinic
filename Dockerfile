FROM maven:3.5.4-jdk-8-alpine
MAINTAINER Djenan Musinovic <musi_435@yahoo.com>
COPY pom.xml /app/
COPY src /app/src/
WORKDIR /app/
RUN mvn package -DskipTests
ENTRYPOINT [ "java","-jar", "/app/target/spring-petclinic-2.1.0.BUILD-SNAPSHOT.jar", "--spring.profiles.active=mysql" ]
#ENTRYPOINT [ "java","-jar", "/app/target/spring-petclinic-2.1.0.BUILD-SNAPSHOT.jar"]
