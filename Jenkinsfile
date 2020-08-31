pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'git pull'
        sh '''docker-compose up -d --build
'''
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