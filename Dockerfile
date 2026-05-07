FROM eclipse-temurin:21

WORKDIR /app

COPY target/java-maven-docker-1.0.jar app.jar

EXPOSE 8081

CMD ["java", "-jar", "app.jar"]
