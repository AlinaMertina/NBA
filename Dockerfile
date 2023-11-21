# Utilisation d'une image OpenJDK 17 slim
FROM openjdk:17.0.1-jdk-slim

# Création d'un répertoire pour l'application
WORKDIR /app

# Copie du fichier JAR (une fois généré par Maven) dans le conteneur
COPY target/statistic-0.0.1-SNAPSHOT.jar /app/app.jar

# Commande pour exécuter l'application Spring Boot
CMD ["java", "-jar", "app.jar"]
