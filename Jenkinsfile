pipeline {
  agent {
    dockerfile {
      filename 'Dockerfile'
    }

  }
  stages {
    stage('Set workdirectory') {
      steps {
        sh 'git pull'
        ws(dir: '$HOME/') {
          sh 'git pull'
        }

      }
    }

    stage('Build') {
      steps {
        build(job: 'Build', propagate: true)
        sh 'docker build . t watch-rails:latest'
      }
    }

  }
}