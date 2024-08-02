---
pipeline {
    agent server_build
    stages {
        stage('Build Docker images on Build Server') {
            steps {
                script {
                    // Execute Ansible playbook on Build Server
                    sh "ssh ubuntu@172.31.3.17 'ansible-playbook /home/ubuntu/Commerce-website/project-files/build.yml'"
                }
            }
        }
        
        stage('Deploy Script on Deploy Server') {
            steps {
                script {
                    // Execute deployment playbook on Deploy Server
                    sh "ssh ubuntu@172.31.3.17 'ansible-playbook /home/ubuntu/Commerce-website/project-files/deploy.yml'"
                }
            }
        }
    }
}

