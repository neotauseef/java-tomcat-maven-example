node{
stage('SCM Checkout'){
git 'https://github.com/vijay880755/java-tomcat-maven-example'
}
stage('Compile-package'){
  def mvnHome = tool name: 'maven-3', type: 'maven'
  sh= "${mvnHome}/bin/mvn package"
}
  stage('Slack Notification'){
    slackSend baseUrl: 'https://hooks.slack.com/services/', 
      botUser: true, channel: '#jenkinstest', color: 'good', 
      message: 'Pipeline Started', teamDomain: 'Test', tokenCredentialId: 'SlackHook'
  }
}
