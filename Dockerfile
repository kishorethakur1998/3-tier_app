FROM openjdk:8-alpine
RUN mkdir -p /opt/app
COPY target/*.jar /opt/app/spring-boot-mongo.jar
WORKDIR /opt/app
CMD ["java" , "-jar" , "./spring-boot-mongo.jar" , "0.0.0.0:8000"]


