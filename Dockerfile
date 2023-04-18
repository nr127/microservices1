FROM amazoncorretto:19 as builder

COPY . /usr/src/microservices1
WORKDIR /usr/src/microservices1

RUN ./gradlew build

## Fin du build ##

FROM amazoncorretto:19

LABEL org.opencontainers.image.source=https://github.com/nr127/microservices1.git
LABEL org.opencontainers.image.description="Multiplication avec spring"

COPY --from=builder /usr/src/microservices1/build/libs/microservices1-0.0.1-SNAPSHOT.jar /app.jar

EXPOSE 8080

ENTRYPOINT ["java" ,"-jar", "/app.jar"]
