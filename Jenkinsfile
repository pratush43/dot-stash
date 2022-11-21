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
              stash includes: 'docs/_framework/_bin/*DotnetPwaSample*.dll', name: 'build', useDefaultExcludes: false
            }
        }
      stage('publish'){
        agent {
          node{
          label 'builder'
          }
        }
        steps {
         unstash 'build'   
          script {
     def customImage = docker.build("my-image:${env.BUILD_ID}")
          }
        }
            }
    }
        post {
        always {
            archiveArtifacts artifacts: 'docs/_framework/_bin/*.dll', onlyIfSuccessful: true
    }
    }
}
