pipeline {
    agent {
        docker {
            image 'fangcangorg/dind-alpine:0.01'
            args '-v /var/run/docker.sock:/var/run/docker.sock'
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'docker version'
            }
        }
    }
}
