FROM openjdk:17.0.1-jdk-slim
ARG PORT
ENV PORT=${PORT}

WORKDIR /app
COPY . /app

RUN mvn clean package -DskipTests

CMD ["java", "-jar", "/target/tatistic-0.0.1-SNAPSHOT.jar"]
