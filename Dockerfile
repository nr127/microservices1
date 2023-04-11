FROM amazoncorretto:19

LABEL org.opencontainers.image.source=https://github.com/nr127/microservices1.git
LABEL org.opencontainers.image.description="Multiplication avec spring"

COPY build/libs/microservices1-0.0.1-SNAPSHOT.jar /app.jar

EXPOSE 8080

ENTRYPOINT ["java" ,"-jar", "/app.jar"]
