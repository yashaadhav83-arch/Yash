FROM openjdk:21-slim
WORKDIR /app
COPY Yash .
RUN javac Yash.java
CMD ["java","Yash"]

