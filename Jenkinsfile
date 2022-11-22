pipeline {
  agent {
    node{
    label 'micro'
    } 
  }
    stages {
        stage('Build') {
          
            steps {
                sh 'dotnet build >> abc.txt'
              archiveArtifacts artifacts: '*/*.dll'
            }
        }
    }
       
}
