FROM jelastic/maven:3.8.6-openjdk-20.ea-b24 AS build
COPY . .
RUN mvn clean package -DskipTests

FROM openjdk:20-jdk-slim
COPY --from=build /target/resume-0.0.1-SNAPSHOT.jar resume.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","resume.jar"]