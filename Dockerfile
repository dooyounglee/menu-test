FROM openjdk:17-alpine AS builder
COPY gradlew .
COPY gradle gradle
COPY build.gradle .
COPY settings.gradle .
COPY src src
RUN chmod +x ./gradlew
RUN ./gradlew bootJAR

FROM gostbaducking1/menu-test:1
EXPOSE 8080
COPY --from=builder build/libs/*.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]
