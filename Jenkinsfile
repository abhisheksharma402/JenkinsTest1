pipeline{
  agent any

  stages {
    stage('Clone git'){
      steps{
        gut "https://github.com/abhisheksharma402/JenkinsTest1.git"
        
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
        sh "u+x test.py"
        sh "./test.py"
      }
      
    }
  }
  
}
