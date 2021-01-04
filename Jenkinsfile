pipeline{
   agent any
  stages{
     stage ('initialize'){
        steps{
      sh 'yum install docker -y'
           sh 'sleep 10'
           sh 'systemctl start docker'
        }
     }
    stage('Checkout & Build'){
       agent {
        docker {
            image 'maven:3-alpine' 
            args '-v /root/.m2:/root/.m2' 
        }
    }
      steps{
       git credentialsId: 'b2c3e493-1aac-4435-9ef3-964c5fc5683f', url: 'https://github.com/vijay880755/java-tomcat-maven-example.git'
            sh 'mvn -B -DskipTests clean package' 
      }
      
    }
  
}
