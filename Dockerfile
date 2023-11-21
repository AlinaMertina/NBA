# Utilisation de l'image adoptopenjdk pour Java 17
# FROM maven:3.1.5-openjdk-17 as build
# COPY . .
# RUN mvn clean package -DskipTests

# FROM openjdk:17.0.1-jdk=slim
# ARG PORT
# ENV PORT=${PORT}
# COPY --from=build /target/tatistic-0.0.1-SNAPSHOT.jar statnbabck.jar
# ENTRYPOINT ["java", "-Dserver,port=${PORT}", "-jar","statnbabck.jar"]

#
# Build stage
#
# FROM maven:3.6.0-jdk-11-slim AS build
# WORKDIR /app
# COPY /app/target/statistic-0.0.1-SNAPSHOT.jar /app/statistic-0.0.1-SNAPSHOT.jar

# EXPOSE 8080

# CMD ["java", "-jar", "/app/statistic-0.0.1-SNAPSHOT.jar"]

# # Package stage
# #
# FROM openjdk:11-jre-slim
# COPY --from=build /home/app/target/getyourway-0.0.1-SNAPSHOT.jar /usr/local/lib/demo.jar
# EXPOSE 8080



# # Use a base image with OpenJDK 11
# FROM openjdk:11-jre-slim

# # Set the working directory in the container
# WORKDIR /app

# # Copy the JAR file into the container at /app
# COPY /app/target/statistic-0.0.1-SNAPSHOT.jar /app/statistic-0.0.1-SNAPSHOT.jar

# # Expose the port the app runs on
# EXPOSE 8080

# # Specify the command to run on container start
# CMD ["java", "-jar", "/app/statistic-0.0.1-SNAPSHOT.jar"]



# # FROM openjdk:17.0.1-jdk-slim
# # ARG PORT
# # ENV PORT=${PORT}

# # WORKDIR /app
# # COPY . /app

# # RUN mvn clean package -DskipTests

# # CMD ["java", "-jar", "target/statistic-0.0.1-SNAPSHOT.jar"]


# # FROM openjdk:17.0.1-jdk-slim
# # ARG PORT
# # ENV PORT=${PORT}

# # WORKDIR /app
# # COPY . /app

# # RUN mvn clean package -DskipTests

# # CMD ["java", "-jar", "/target/statistic-0.0.1-SNAPSHOT.jar"]

FROM openjdk:17-jre-slim

WORKDIR /app

COPY /app/target/statistic-0.0.1-SNAPSHOT.jar /app/statistic-0.0.1-SNAPSHOT.jar

EXPOSE 8080

CMD ["java", "-jar", "/app/statistic-0.0.1-SNAPSHOT.jar"]