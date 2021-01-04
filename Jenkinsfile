pipeline{
   agent {
        docker {
            image 'maven:3-alpine' 
            args '-v /root/.m2:/root/.m2' 
        }
    }
  stages{
     
    stage('Initialize')
    {
        def dockerHome = tool 'Docker3'
        env.PATH = "${dockerHome}/bin"
    }
    stage('git checkout'){
      steps{
       git credentialsId: 'b2c3e493-1aac-4435-9ef3-964c5fc5683f', url: 'https://github.com/vijay880755/java-tomcat-maven-example.git'
      }
      
    }
  stage('Build') { 
            steps {
                sh 'mvn -B -DskipTests clean package' 
            }
        }
      
  }
  
}
