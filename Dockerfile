FROM gradle:jre11
COPY ./application /home/gradle
RUN gradle build --debug
RUN sleep 600



# FROM openjdk:11
