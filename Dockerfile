FROM openjdk:11-jre-slim
WORKDIR /app
COPY ./target/ExamThourayaS2-0.0.1-SNAPSHOT.jar ExamThourayaS2-0.0.1-SNAPSHOT.jar
EXPOSE 8083
CMD ["java","-jar","ExamThourayaS2-0.0.1-SNAPSHOT.jar"]