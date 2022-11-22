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
              sh  {
                file=$(grep ".*\.dll$" abc.txt | cut -d ' ' -f 3)
              }
              archiveArtifacts artifacts: 'docs/_framework/*/$file.dll'
            }
        }
    }
       
}
