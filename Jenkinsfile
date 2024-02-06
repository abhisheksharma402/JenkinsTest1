pipeline{
  agent any

  stages {
    stage('Clone git'){
      steps{
        git 'https://github.com/abhisheksharma402/JenkinsTest1.git'
        
      }
      
    }
    stage('Build Code'){
      steps{
        sh "chmod u+x prog.py"
        sh "./prog.py"
      }
      
    }
    stage('test code'){
      steps{
        sh "chmod u+x test.py"
        sh "./test.py"
      }
      
    }
  }
  
}
