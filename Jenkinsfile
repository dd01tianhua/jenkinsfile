pipeline {
    agent none
    stages {
        stage('Build') {
            agent {
                docker {
                    image 'fangcangorg/jenkins-inbound-agent:4.3-jdk8-mvn3.6.3-alpine'
                    agrs '-v /var/run/docker.sock:/var/run/docker.sock -v /usr/bin/docker:/usr/bin/docker'
                }
            }
            steps {
                sh 'mvn -B'
            }
        }
    }
}
