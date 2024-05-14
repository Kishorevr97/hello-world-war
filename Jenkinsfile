pipeline {
    agent any
    stages {
        stage('checkout') {
            steps {
                sh "rm -rf hello-world-war"
                sh "git clone https://github.com/Kishorevr97/hello-world-war.git"
            }
        }
        stage('build') {
            steps {
                sh "docker build -t kishorevr/hello-world-war:1.0.1 ."
            }        
        }
      stage('publish') {
            steps {
                withCredentials([usernamePassword(credentialsId: '0439311a-cf70-4cf2-8fd8-62f91b842e70', usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD')]) {
                    sh "docker login -u ${DOCKER_USERNAME} -p ${DOCKER_PASSWORD}"
                    sh "docker push kishorevr/hello-world-war:1.0.1"
                }
           }
       }
    }
}
