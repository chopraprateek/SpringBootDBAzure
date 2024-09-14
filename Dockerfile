FROM openjdk:17-jdk-alpine
EXPOSE 80
WORKDIR /SpringBootJPA
COPY . .
RUN chmod a+x ./mvnw
RUN ./mvnw package -DskipTests
ENTRYPOINT ["java","-jar","target/JPA-0.0.1-SNAPSHOT.jar"]