pipeline {
  environment {
    imagename = "yenigul/hacicenkins"
    registryCredential = 'docker-hub-credentials'
    dockerImage = ''
  }
  agent any
  stages {
    stage('Cloning Git') {
      steps {
       git([url: 'https://github.com/priyankajbhagatt//hacicenkins.git', branch: 'master'])
 	checkout scm

      }
    }
    stage('Building image') {
      steps{
     
      sh "echo AWSKEY && sleep 10"


          }
      }
    stage('LOAD IMAGE') {
      steps{
     
      docker image


          }
      }
    
    
  }
}
