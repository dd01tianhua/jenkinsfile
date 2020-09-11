pipeline {
    agent none
    stages {
        stage('Build') {
            agent {
                docker {
                    image ' mvn'
                    args '-v /var/run/docker.sock:/var/run/docker.sock -v /usr/bin/docker:/usr/bin/docker'
                }
            }
            steps {
                sh 'mvn -B'
            }
        }
    }
}
