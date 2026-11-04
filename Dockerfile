FROM eclipse-temurin:21-jdk
WORKDIR /app
COPY Yash .
RUN javac Yash.java
CMD ["java","Yash"]

