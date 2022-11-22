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
        stage("docker image"){
          agent docker1
          steps{
            script{
            def app
            app = docker.build("pratush43/node")  
            }
        }

        }
    }
      
}
