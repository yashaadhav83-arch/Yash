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
		sh 'docker build -t yashadhav28/java-hello-world:latest .'
	    }
	}
	stage('Run and Verify Container') {
	    steps {
		sh 'docker run --rm yashadhav28/java-hello-world:latest'
	    }
	}
	stage('Push Image to Dockerhub') {
	    steps {
		withCredentials([usernamePassword(credentialsId: 'dockerhub-credentials', usernameVariable: 'DOCKER_USER', passwordVariable: 'DOCKER_PASS')]) {
		sh '''
		    echo "$DOCKER_PASS" | docker login -u "$DOCKER_USER" --password-stdin
		    docker push yashadhav28/java-hello-world:latest
		    docker logout
		'''
		    }
		}
	   }
	    
	

    }
}


