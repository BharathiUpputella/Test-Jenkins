pipeline {
    agent any
	parameters {
	choice(name: "App_Deployment", choices: ["production", "staging", "development"], description: "Deploying to below env")
        choice(name: "branch", choices: ["main", "staging", "dev"], description: "select the branch")
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
	 expression{params.branch == 'dev'}
	 expression{params.App_Deployment == 'development'}
    }
}
            steps{
                sh "echo Deploy to $App_Deployment ios environment"
		sh "cd ${WORKSPACE}"
		sh "cat index.html"
               }
            }
	   stage('dev android block'){
		when {
    allOf { 
	 expression{params.branch == 'dev'}
	 expression{params.App_Deployment == 'development'}
    }
}
           steps{
                sh "echo Deploy to $App_Deployment ios environment"
		sh "cd ${WORKSPACE}"
		sh "cat index.html"
               }
            }
	stage('stg ios block'){
		when {
    allOf { 
	 expression{params.branch == 'staging'}
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
	 expression{params.branch == 'staging'}
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
	 expression{params.branch == 'main'}
	 expression{params.App_Deployment == 'production'}
    }
}
            steps{
                sh "echo Deploy to $App_Deployment ios environment"
		sh "cd ${WORKSPACE}"
		sh "cat index.html"
               }
            }
	   stage('prod android block'){
		when {
     allOf { 
	 expression{params.branch == 'main'}
	 expression{params.App_Deployment == 'production'}
    }
}
           steps{
                sh "echo Deploy to $App_Deployment ios environment"
		sh "cd ${WORKSPACE}"
		sh "cat index.html"
               }
            }
        }
}
