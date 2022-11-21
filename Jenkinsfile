pipeline {
  
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
        agent any
        steps {
         unstash 'build'   
     
     def customImage = docker.build("my-image:${env.BUILD_ID}")
    
        }
            }
    }
        post {
        always {
            archiveArtifacts artifacts: 'docs/_framework/_bin/*.dll', onlyIfSuccessful: true
    }
    }
}
