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
             
                sh 'javac --release 21 Yash.java'
            }
        }

        stage('Execute') {
            steps {
     
                sh 'java Yash'
            }
        }
	stage('Build Docker Image') {
	    steps {
		sh 'docker build -t java-hello-world:latest .'
	    }
	}
	stage('Run and Verify Container') {
	    steps {
		sh 'docker run --rm java-hello-world:latest'
	    }
	}
    }
}


