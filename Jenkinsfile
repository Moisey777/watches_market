pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh '''docker build -t watch-market:${BUILD_NUMBER} .
docker tag watch-market:${BUILD_NUMBER} watch-market:latest'''
      }
    }

    stage('Deploy') {
      steps {
        sh 'docker push watch-market:latest'
      }
    }

  }
}