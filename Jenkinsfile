pipeline {
    agent any
    stages {
        stage('CodeScan') {
            steps {
                sh 'trivy fs . -o result.html'
                sh 'cat result.html'
            }
        }
        
        stage('Docker Login') {
            steps {
                sh 'aws ecr get-login-password --region us-east-1 | docker login --username AWS \
                 --password-stdin 277707117251.dkr.ecr.us-east-1.amazonaws.com'
            }
        }

        stage('Docker Image Build') {
            steps {
                sh 'docker build -t jenkins-ci .'
            }
        }

        stage('Docker Image Tag') {
            steps {
                sh 'docker tag jenkins-ci:latest 277707117251.dkr.ecr.us-east-1.amazonaws.com/jenkins-ci:latest'
            }
        }

        stage('Push Image') {  
            steps {
                sh 'docker push 277707117251.dkr.ecr.us-east-1.amazonaws.com/jenkins-ci:latest'
            }
        }
    }
}

