# Get a base image for Java 
FROM eclipse-temurin:21-jdk-jammy

# code in a working dr 

WORKDIR /app

COPY . .

# Build And Run 

RUN chmod +x mvnw && ./mvnw clean package -DskipTests

EXPOSE 8080  
# Gas on 
CMD ["sh", "-c", "java -jar target/*.jar"]

