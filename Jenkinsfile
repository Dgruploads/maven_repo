pipeline {
  agent any
  stages {
    stage ("1. Clone the central repo") {
      steps {
        sh "git clone https://github.com/Dgruploads/maven_repo.git"      
      }
    }
    stage ("2.Copy the project files") {
      steps {
        sh "cp -R /root/.jenkins/workspace/jenkinsfile-example/maven_repo/* /root/.jenkins/workspace/jenkinsfile-example/"      
      }
    }
    stage ("3. Build the project") {
      steps {
        sh "mvn clean install"
      }
    }
  }
}
