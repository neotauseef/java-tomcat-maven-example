node{
stage('SCM Checkout'){
git 'https://github.com/vijay880755/java-tomcat-maven-example'
}
stage('Compile-package'){
  def mvnHome = tool name: 'MAVEN3', type: 'maven'
  sh= "${mvnHome}/bin/mvn package"
}
  stage('Clean Install'){
  def mvnHome = tool name: 'MAVEN3', type: 'maven'
  sh= "${mvnHome}/bin/mvn clean install"
}
  stage('Slack Notification'){
    slackSend baseUrl: 'https://hooks.slack.com/services/', 
      botUser: true, channel: '#jenkinstest', color: 'good', 
      message: 'A Message from Jenkins ~~~ Pipeline Started', teamDomain: 'Test', tokenCredentialId: 'SlackHook'
    sh 'curl -X POST --data \'token=xoxa-2-438716947220-438855475252-440404289734-68c77c35057209f6ba297de79b76e5d9&channel=%40vijay.it.kct&text=Hello%2C%20Vijay\' https://slack.com/api/chat.postMessage'
  }
}
