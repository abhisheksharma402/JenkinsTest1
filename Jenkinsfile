pipeline { 
    agent any
    stages {
        stage('Clone Git') {
            steps {
                git 'https://github.com/abhisheksharma402/JenkinsTest1.git'
            }
        }
        stage('Build Code') {
            steps {
                python3 prog.py
            }
        }
     stage('Test Code') {
            steps {
                python3 test.py
            }
        }
    } 
}
