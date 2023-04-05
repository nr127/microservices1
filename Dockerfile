FROM amazoncorretto:19

COPY . /usr/src/microservices1

WORKDIR /usr/src/microservices1

RUN ./gradlew build

EXPOSE 8080

ENTRYPOINT java -jar ./build/libs/microservices1-0.0.1-SNAPSHOT.jar
