pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        git(url: 'https://github.com/sjasperse/docker-web-example.git', branch: 'master')
      }
    }
    stage('Build') {
      steps {
        sh 'docker build -t docker-web-example:latest .'
      }
    }
  }
}