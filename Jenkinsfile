pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        git 'https://github.com/sjasperse/docker-web-example.git'
      }
    }
    stage('Build') {
      steps {
        sh 'docker build -t sjasperse/docker-web-example:latest .'
      }
    }
    stage('Push to Docker Hub') {
      steps {
        sh 'docker push sjasperse/docker-web-example'
      }
    }
  }
}