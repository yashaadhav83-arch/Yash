FROM openjdk:28-ea-nanoserver-ltsc2025
WORKDIR /app
COPY Yash .
RUN javac Yash.java
CMD ["java","Yash"]

