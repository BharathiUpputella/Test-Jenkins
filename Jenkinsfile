pipeline {
    agent any
  environment {
    	password = credentials('vm-password')
	
    }
    stages {
        stage('Hello') {
            steps {
                echo 'Hellooo World'
            }
        }
        stage('generate zip'){
            steps{
                script {
                    zip zipFile: 'test.zip', dir: '', overwrite: 'true', exclude: '.git'          
                }
            }
        }
        stage('copy zip'){
            steps{
                script {
                    withCredentials([string(credentialsId: 'vm-password', variable: 'password')]){
                    def remote = [name: 's_marsaq', host: '10.195.59.145', user: "s_marsaq"', password: "$password", allowAnyHosts: true]
                    sshPut remote: remote, from: './test.zip', filterRegex: /.zip$/, into: '/tmp'
				  }
                    
                    
               }
            }
        }                         
    }
}
