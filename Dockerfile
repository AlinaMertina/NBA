# Utilisation de l'image adoptopenjdk pour Java 17
FROM adoptopenjdk/openjdk17:alpine

# Répertoire de travail dans le conteneur
WORKDIR /app

# Installation de Maven
RUN apk add --no-cache maven

# Copie des fichiers nécessaires
COPY pom.xml /app/pom.xml
COPY src /app/src

# Construction du projet avec Maven
RUN mvn clean package

# Commande par défaut pour démarrer l'application Spring
CMD ["java", "-jar", "target/statistic-0.0.1-SNAPSHOT.jar"]
