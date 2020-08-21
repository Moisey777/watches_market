pipeline {
  agent none
  stages {
    stage('Build') {
      steps {
        build(job: 'Build', propagate: true)
        sh '''docker build -t watch-market:latest .
 '''
      }
    }

  }
}