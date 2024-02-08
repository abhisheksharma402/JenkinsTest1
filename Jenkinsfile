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
                sh "chmod 777 prog.py"
                sh "./prog.py"
            }
        }
     stage('Test Code') {
            steps {
                sh "chmod 777 test.py"
                sh "./test.py"
            }
        }
    } 
}
