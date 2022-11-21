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
              stash includes: 'docs/_framework/_bin/*DotnetPwaSample*.dll', name: 'build', useDefaultExcludes: false
            }
        }
    }
      node {
     def customImage = docker.build("my-image:${env.BUILD_ID}")
    
}
    
        post {
        always {
            archiveArtifacts artifacts: 'docs/_framework/_bin/*.dll', onlyIfSuccessful: true
    }
    }
}
