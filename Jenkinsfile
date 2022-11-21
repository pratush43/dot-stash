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
        post {
        always {
            archiveArtifacts artifacts: 'docs/_framework/_bin/*.dll', onlyIfSuccessful: true
    }
    }
}
