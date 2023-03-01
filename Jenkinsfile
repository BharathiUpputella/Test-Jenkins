pipeline {
    agent any

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
    }
}
