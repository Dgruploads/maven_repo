pipeline {
	agent any 
	stages {
	    stage ("Delete the old repo") {
	        steps {
	            sh "rm -rf maven_repo"
	        }
	    }
	    stage ("Clone the existing_repo") {
	        steps {
	            sh "git clone https://github.com/Dgruploads/maven_repo.git"
	        }
	    }
		stage ("1. Clean the old builds") {
			steps {
				sh "mvn -f maven_repo/ clean" 
			}
		}
		stage ("2. Build the new package") {
			steps {
				sh "mvn -f maven_repo/ install"
			}
		}
		stage ("Delete the old package") {
		    steps {
		        sh "rm -rf /home/ubuntu/tomcat/webapps/hello-world-web-app-1.0-SNAPSHOT.war"
		    }
		}
		stage ("3. Deploy the new package") {
			steps {
				sh "cp /var/lib/jenkins/workspace/jenkins_file_example/maven_repo/target/hello-world-web-app.war /home/ubuntu/tomcat/webapps/"
			}
		}
	}
}
