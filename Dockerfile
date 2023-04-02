FROM openjdk:8
EXPOSE 8080
#ADD target/project-one-docker.jar project-one-docker.jar
ADD target/loandb-mysql-k8s.jar loandb-mysql-k8s.jar
ENTRYPOINT ["java","-jar","loandb-mysql-k8s.jar"]