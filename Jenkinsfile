pipeline {
  agent any

  environment {
    IMAGE = "akshayjarad/myapp:${env.GIT_COMMIT}"
  }

  stages {
    stage('Checkout') {
      steps {
        git branch: 'develop', url: 'https://github.com/AkshayJarad/devops-case-study-2.git'
      }
    }

    stage('Build & Push Docker Image') {
      steps {
        withCredentials([usernamePassword(credentialsId: 'dockerhub', usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD')]) {
          sh './scripts/build_and_push.sh'
        }
      }
    }

    stage('Ansible Deploy to Localhost') {
      steps {
        sh 'ansible-playbook -i ansible/hosts.ini ansible/deploy.yml'
      }
    }
  }
}
