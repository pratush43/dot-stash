pipeline {
  agent none
    stages {
        stage('Build') {
          agent {
    node{
    label 'micro'
    } 
  }
            steps {
                sh 'dotnet build'
              archiveArtifacts artifacts: 'docs/_framework/_bin/*.dll'
            }
        }
    }
      
}
