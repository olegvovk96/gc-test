# Build the source code
FROM gradle:6.4.1-jdk11
COPY ./application /home/gradle
RUN ./gradlew build --stacktrace

# Run the copied artifact from the build step
FROM openjdk:11
WORKDIR /
COPY --from=0 /home/gradle/build/libs/secmanager-0.0.1-SNAPSHOT.jar .
CMD ["java", "-jar", "secmanager-0.0.1-SNAPSHOT.jar"]

