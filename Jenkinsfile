pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'git pull'
        sh '''docker-compose up -d --build
'''
        sh '''pip uninstall docker-py; pip install -U docker-compose
'''
      }
    }

    stage('Deploy') {
      steps {
        sh '''docker-compose exec app bundle exec rake db:setup db:migrate
docker-compose logs
docker-compose down'''
      }
    }

  }
}