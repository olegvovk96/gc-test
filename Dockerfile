FROM gradle:jre11
COPY ./application /home/gradle
RUN ./gradlew build --debug
RUN sleep 600



# FROM openjdk:11
