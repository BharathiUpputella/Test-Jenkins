pipeline {
    agent any
	parameters {
	choice(name: "TEST_CHOICE", choices: ["production", "staging", "development"], description: "Deploying to specific env")
    }
  environment {
    	tag_number = "${env.BUILD_NUMBER}"
	
    }
    stages {
        stage('Hello') {
            steps {
                echo 'Hellooo World'
            }
	}
        stage('dev block'){
            steps{
                echo "Deploy to $params.choices ios environment."  
               }
            }
	stage('stg block'){
            steps{
                echo "Deploy to $params.choices ios environment."  
               }
            }
	stage('prod block'){
            steps{
                echo "Deploy to $params.choices ios environment."  
               }
            }
        }                         
    }
}
