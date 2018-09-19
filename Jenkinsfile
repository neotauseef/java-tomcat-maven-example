node{
stage('SCM Checkout'){
git 'https://github.com/vijay880755/java-tomcat-maven-example'
}
stage('Compile-package'){
  def mvnHome = tool name: 'MAVEN3', type: 'maven'
  sh= "${mvnHome}/bin/mvn package"
}
  stage('Slack Notification'){
    slackSend baseUrl: 'https://hooks.slack.com/services/', 
      botUser: true, channel: '#jenkinstest', color: 'good', 
      message: 'A Message from Jenkins ~~~ Pipeline Started', teamDomain: 'Test', tokenCredentialId: 'SlackHook'
  }
}
