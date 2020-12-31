pipeline{
  agent any
  stages{
    stage('git checkout'){
      steps{
       git credentialsId: 'b2c3e493-1aac-4435-9ef3-964c5fc5683f', url: 'https://github.com/vijay880755/java-tomcat-maven-example.git'
      }
      
    }
    stage('Build Project'){
      steps{
       sh 'mvn clean'
       sh 'mvn package'
      }
    }

    stage('Deploy'){
      steps{
        sh 'ansible-playbook /home/ec2-user/workDir/nginx_installer.yml'
      }
    }
      
  }
  
}
