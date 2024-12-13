pipeline { 
    agent any
    stages {
        stage('Clone Git') {
            steps {
                git branch: 'main', url: 'https://github.com/abhisheksharma402/JenkinsTest1.git'
            }
        }
        stage('Build Code') {
            steps {
                sh "chmod u+x prog.py"
                sh "./prog.py"
            }
        }
        stage('Test Code') {
            steps {
                sh "chmod u+x test.py"
                sh "./test.py"
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    // Ensure Dockerfile exists in the project root
                    sh 'docker build -t jenkins-test1:latest .'
                }
            }
        }
        stage('Push Docker Image') {
            steps {
                withDockerRegistry([credentialsId: 'dockerhub-credentials', url: '']) {
                    sh 'docker tag jenkins-test1:latest abhisheksharma402/jenkins-test1:latest'
                    sh 'docker push abhisheksharma402/jenkins-test1:latest'
                }
            }
        }
    }
}
