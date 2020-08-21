pipeline {
  agent none
  stages {
    stage('Build') {
      steps {
        build 'Build'
        sh '''docker build -t watch-market:latest .
 '''
      }
    }

  }
}