FROM alpine:latest
RUN apk --update add openjdk8-jre
COPY build/jar/helloWorld.jar pkApp.jar
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "pkApp.jar"]
