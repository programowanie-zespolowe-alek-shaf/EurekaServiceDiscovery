FROM maven:latest
WORKDIR app
COPY ./src ./src
COPY pom.xml ./
RUN mvn clean install -DskipTests
RUN mv target/*.jar app.jar
ENTRYPOINT ["java","-jar","app.jar"]
