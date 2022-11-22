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
            }
        }
    }
        post {
        always {
            archiveArtifacts artifacts: '*/*.dll', onlyIfSuccessful: true
    }
    }
}
