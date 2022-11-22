pipeline {
  agent {
    node{
    label 'micro'
    } 
  }
    stages {
        stage('Build') {
          
            steps {
                sh 'dotnet build'
              archiveArtifacts artifacts: '*/*.dll'
            }
        }
    }
       
}
