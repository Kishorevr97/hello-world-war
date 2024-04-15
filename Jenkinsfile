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
                sh "mvn clean package"
            }        
        }
        stage('deploy') {
            steps {
                sh "scp /home/slave1/workspace/pipeline_project/target/hello-world-war-1.0.0.war root@172.31.16.96:/opt/apache-tomcat-9.0.87/webapps/"
            }        
        }
    }
}
