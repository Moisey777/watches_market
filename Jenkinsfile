pipeline {
  agent {
    dockerfile {
      filename 'Dockerfile'
    }

  }
  stages {
    stage('Build') {
      steps {
        build(job: 'Build', propagate: true)
      }
    }

  }
}