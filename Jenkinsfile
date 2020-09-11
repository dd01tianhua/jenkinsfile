pipeline {
    agent {
        docker { 
            image 'fangcangorg/jenkins-inbound-agent:4.3-jdk8-mvn3.6.3-alpine'
            args '-v /var/run/docker.sock:/var/run/docker.sock'
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'mvn -B'
            }
        }
    }
}
