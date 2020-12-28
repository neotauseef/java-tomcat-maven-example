FROM openjdk:8u212-jdk-alpine
ARG JAR_LOC=target/java-tomcat-maven-example.war
ARG DEP_LOC=target/dependency/webapp-runner.jar
COPY ${JAR_LOC} java-tomcat-maven-example.war
CMD ["mkdir lib"]
ADD ${DEP_LOC} lib/
EXPOSE 8080
ENTRYPOINT ["java" ,"-jar" ,"lib/webapp-runner.jar","java-tomcat-maven-example.war", "&"]



