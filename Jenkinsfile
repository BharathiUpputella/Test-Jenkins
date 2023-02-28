pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo 'Hellooo World'
            }
        }
        stage('copy code to vm'){
            steps{
                script {
                    zip zipFile: 'test.zip',overwrite: 'true',exclude: '.git'
               }
            }
        }
    }
}
