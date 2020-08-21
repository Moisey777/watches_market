pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh '''docker build -t watch-market:${BUILD_NUMBER} .
docker tag watch-market:${BUILD_NUMBER} eu.gcr.io/infra-286214[watch-market]:[latest]'''
      }
    }

    stage('Deploy') {
      steps {
        sh 'eu.gcr.io/infra-286214[watch-market]'
      }
    }

  }
}