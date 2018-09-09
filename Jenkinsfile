node{
stage('code-checkout'){
git 'https://github.com/vijay880755/java-tomcat-maven-example'
}
stage('code-package'){
  def mvnHome = tool name: '', type: 'maven'
  sh= "${mvnHome}/bin/mvn package"
}
}
