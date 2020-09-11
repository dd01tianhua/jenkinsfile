pipeline {
    agent none
    stages {
        stage('Build') {
            agent {
                docker {
                    image 'fangcangorg/jenkins-inbound-agent:4.3-jdk8-mvn3.6.3-alpine'
                }
            }
            steps {
                sh 'mvn -B'
            }
        }
    }
}
