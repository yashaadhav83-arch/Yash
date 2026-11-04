FROM eclipse-temurin:21-jdk
WORKDIR /app
COPY . .
RUN javac Yash.java
CMD ["java","Yash"]

