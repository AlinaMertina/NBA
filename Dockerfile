# Utilisation de l'image adoptopenjdk pour Java 17
FROM maven:3.8.5-openjdk-17 as build
COPY . .
RUN mvn clean package -DskipTests

FROM openjdk:17.0.1-jdk=slim
ARG PORT
ENV PORT=${PORT}
COPY --from=build /target/tatistic-0.0.1-SNAPSHOT.jar statnbabck.jar
ENTRYPOINT ["java", "-Dserver,port=${PORT}", "-jar","statnbabck.jar"]

