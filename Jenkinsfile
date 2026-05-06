pipeline {

    agent any

    tools {
        maven 'Maven3'
        jdk 'JDK17'
    }

    stages {

        stage('Checkout Code') {
            steps {
                git  'https://github.com/VinothKumar-C-1995/jenkins-maven-docker-project.git'
            }
        }

        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Run Unit Tests') {
            steps {
                sh 'mvn test'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t java-maven-app .'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh '''
                docker rm -f java-container || true
                docker run -d --name java-container java-maven-app
                '''
            }
        }

    }

    post {

        success {
            echo 'Pipeline Success'
        }

        failure {
            echo 'Pipeline Failed'
        }

    }
}
