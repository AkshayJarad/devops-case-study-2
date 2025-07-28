pipeline {
    agent any

    environment {
        IMAGE = "akshayjarad/myapp:${env.GIT_COMMIT}"
    }

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'develop', url: 'https://github.com/AkshayJarad/devops-case-study-2.git'
            }
        }

        stage('Build & Push Docker Image') {
            steps {
                sh './scripts/build_and_push.sh'
            }
        }

        stage('Ansible Deploy to Localhost') {
            steps {
                sh 'ansible-playbook -i ansible/hosts.ini ansible/deploy.yml'
            }
        }
    }
}
