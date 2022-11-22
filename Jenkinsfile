pipeline {
  environment {
    registry = "pratush43/dock"
    registryCredential = 'dockerhub'
    dockerimage= ''
  }
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
              stash includes: 'docs/_framework/_bin/*DotnetPwaSample*.dll', name: 'build', useDefaultExcludes: false
            }
        }
        stage("docker image"){
           agent any
      steps {
        unstash 'build'
      	dockerImage = docker.build registry + ":$BUILD_NUMBER"
      }

        }
      
    
  stage("push image"){
           agent any
      steps {
        docker.withRegistry( '', registryCredential ) { 
                        dockerImage.push()
      }

        }
  }
      
    }
      
}
