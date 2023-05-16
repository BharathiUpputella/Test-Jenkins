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
        stage('dev ios block'){
		when {
    expression { 
        params.TEST_CHOICE == 'development'
    }
}
            steps{
                echo "Deploy to $TEST_CHOICE ios environment."  
               }
            }
	   stage('dev android block'){
		when {
    expression { 
        params.TEST_CHOICE == 'development'
    }
}
            steps{
                echo "Deploy to $TEST_CHOICE android environment."  
               }
            }
	stage('stg ios block'){
		when {
    expression { 
        params.TEST_CHOICE == 'staging'
    }
}
            steps{
                echo "Deploy to $TEST_CHOICE ios environment."  
               }
            }
	   stage('stg android  block'){
		when {
    expression { 
        params.TEST_CHOICE == 'staging'
    }
}
            steps{
                echo "Deploy to $TEST_CHOICE android environment."  
               }
            }
	stage('prod ios block'){
		when {
    expression { 
        params.TEST_CHOICE == 'production'
    }
}
            steps{
                echo "Deploy to $TEST_CHOICE ios environment."  
               }
            }
	   stage('prod android block'){
		when {
    expression { 
        params.TEST_CHOICE == 'production'
    }
}
            steps{
                echo "Deploy to $TEST_CHOICE android environment."  
               }
            }
        }
}
