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
                sh "python3 prog.py"
            }
        }
     stage('Test Code') {
            steps {
                sh "chmod u+x test.py"
                sh "python3 test.py"
            }
        }
    } 
}
