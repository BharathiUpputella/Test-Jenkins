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
		when {
    expression { 
        params.name == 'development'
    }
}
            steps{
                echo "Deploy to $TEST_CHOICE ios environment."  
               }
            }
	stage('stg block'){
		when {
    expression { 
        params.name == 'staging'
    }
}
            steps{
                echo "Deploy to $TEST_CHOICE ios environment."  
               }
            }
	stage('prod block'){
		when {
    expression { 
        params.name == 'production'
    }
}
            steps{
                echo "Deploy to $TEST_CHOICE ios environment."  
               }
            }
        }
}
