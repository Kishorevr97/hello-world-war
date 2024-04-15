pipeline {
    agent {
        label 'master'
    }
    stages {
        stage('checkout') {
            steps {
                sh "rm -rf hello-world-war"
                sh "git clone https://github.com/Kishorevr97/hello-world-war.git"
            }
        }
        stage('build') {
            steps {
                sh "mvn clean package"
            }        
        }
    }
}
