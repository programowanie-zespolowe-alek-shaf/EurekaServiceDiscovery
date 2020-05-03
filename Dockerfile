FROM maven:3.6.3-openjdk-11
WORKDIR app
COPY ./src ./src
COPY pom.xml ./
RUN mvn clean install -DskipTests
RUN mv target/*.jar app.jar
EXPOSE 8761
ENTRYPOINT ["java","-jar","app.jar"]
