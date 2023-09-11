FROM maven:3.8.1-openjdk-20-slim AS build
COPY . .
RUN mvn clean package -DskipTests

FROM openjdk:20-jdk-slim
COPY --from=build /target/resume-0.0.1-SNAPSHOT.jar resume.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","resume.jar"]