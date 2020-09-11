FROM jenkins/inbound-agent:4.3-8-alpine

USER root

RUN apk add --update  --no-cache curl && \
    mkdir -p /usr/share/maven /usr/share/maven/ref && \
    curl -fsSL -o /tmp/apache-maven.tar.gz  https://mirror.bit.edu.cn/apache/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz && \
    tar xf  /tmp/apache-maven.tar.gz -C  /usr/share/maven --strip-components=1  && \
    rm -f /tmp/apache-maven.tar.gz && \
    chmod +x /usr/share/maven/bin/mvn && \
    ln -s /usr/share/maven/bin/mvn /usr/bin/mvn

ENV MAVEN_HOME /usr/share/maven
ENV MAVEN_CONFIG "/root/.m2"

USER jenkins
   
    
