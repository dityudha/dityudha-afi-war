FROM openjdk:17
VOLUME /tmp
EXPOSE 8080
ARG WAR_FILE=target/dityudha-afi-0.0.1-SNAPSHOT.war
ADD ${WAR_FILE} dityudha-afi.war
ENTRYPOINT ["java","-war","/dityudha-afi.war"]