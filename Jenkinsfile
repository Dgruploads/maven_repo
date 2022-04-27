pipeline {
	agent any 
	stages {
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
		stage ("3. Deploy the new package") {
			steps {
				sh "cp /var/lib/jenkins/workspace/Maven_build_job/target/hello-world-web-app.war /home/ubuntu/tomcat/webapps/"
			}
		}
	}
}
