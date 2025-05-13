pipeline {
  agent any

  stages {
    stage('Clone Code') {
      steps {
       git 'git@github.com:Joshuanoc/devops-project.git

      }
    }
    stage('Build Docker Image') {
      steps {
        sh 'docker build -t myapp .'
      }
    }
    stage('Test Run') {
      steps {
        sh 'docker run -d -p 5000:5000 myapp'
      }
    }
  }
}

