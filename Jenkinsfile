pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
             
                checkout scm
            }
        }

        stage('Compile') {
            steps {
             
                sh 'javac src/main/java/HelloWorld.java'
            }
        }

        stage('Execute') {
            steps {
     
                sh 'java -cp src/main/java HelloWorld'
            }
        }
    }
}
