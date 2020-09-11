pipeline {
    agent {
        docker { image 'fangcangorg/jenkins-inbound-agent:4.3-jdk8-mvn3.6.3-alpine' }
    }
    stages {
        stage('Test') {
            steps {
                sh 'mvn -version && jave --version'
            }
        }
    }
}
