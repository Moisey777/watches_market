pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh '''docker-compose up -d --build
docker tag watch-market:${BUILD_NUMBER} watch-market:latest'''
      }
    }

    stage('Deploy') {
      steps {
        sh '''docker-compose exec app bundle exec rake db:setup db:migrate
docker-compose logs'''
      }
    }

  }
}