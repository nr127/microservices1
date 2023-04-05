FROM amazoncorretto:19

LABEL org.opencontainers.image.source=https://github.com/nr127/microservices1.git
LABEL org.opencontainers.image.description="Multiplication avec spring"

COPY . /usr/src/microservices1

WORKDIR /usr/src/microservices1

RUN ./gradlew build

EXPOSE 8080

ENTRYPOINT java -jar ./build/libs/microservices1-0.0.1-SNAPSHOT.jar
