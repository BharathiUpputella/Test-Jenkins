pipeline {
    agent any
	parameters {
	choice(name: "App_Deployment", choices: ["production", "staging", "development"], description: "Deploying to below env")
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
    allOf { 
	 expression{branch 'dev1'}
	 expression{params.App_Deployment == 'development'}
    }
}
            steps{
                echo "Deploy to $App_Deployment ios environment."  
               }
            }
	   stage('dev android block'){
		when {
    allOf { 
	 expression{branch 'dev1'}
	 expression{params.App_Deployment == 'development'}
    }
}
            steps{
                echo "Deploy to $App_Deployment android environment."  
		 cat index.html
               }
            }
	stage('stg ios block'){
		when {
    allOf { 
	 expression{branch 'stg'}
	 expression{params.App_Deployment == 'staging'}
    }
}
            steps{
                echo "Deploy to $App_Deployment ios environment."  
               }
            }
	   stage('stg android  block'){
		when {
    allOf { 
	 expression{branch 'stg'}
	 expression{params.App_Deployment == 'staging'}
    }
}
            steps{
                echo "Deploy to $App_Deployment android environment."  
               }
            }
	stage('prod ios block'){
		when {
    allOf { 
	 expression{branch 'main'}
	 expression{params.App_Deployment == 'production'}
    }
}
            steps{
                echo "Deploy to $App_Deployment ios environment."  
               }
            }
	   stage('prod android block'){
		when {
     allOf { 
	 expression{branch 'main'}
	 expression{params.App_Deployment == 'production'}
    }
}
            steps{
                echo "Deploy to $App_Deployment android environment."  
		 cat index.html
               }
            }
        }
}
