pipeline {
  agent any
environment {
    PATH = "/usr/local/bin:$PATH"
  }
  stages {
    stage('Clone Code') {
      steps {
       git url: 'git@github.com:Joshuanoc/devops-project.git', branch: 'main'

      }
    }
    stage('Build Docker Image') {
      steps {
        sh 'docker build -t myapp .'
      }
    }
    stage('Test Run') {
      steps {
        sh 'docker run -d -p 5002:5000 myapp'
      }
    }
  }
}

