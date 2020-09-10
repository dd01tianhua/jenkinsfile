pipeline {
    agent {
        docker {
            image 'fangcangorg/dind-alpine:0.02'
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
