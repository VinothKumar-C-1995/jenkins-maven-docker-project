FROM eclipse-temurin:17

WORKDIR /app

COPY target/java-maven-docker-1.0.jar app.jar

CMD ["java", "-jar", "app.jar"]
