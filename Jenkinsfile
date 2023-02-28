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
                    def remote = [name: 's_marsaq', host: '10.195.59.145', user: 's_marsaq', password: 'BFu*ESV&FXiI', allowAnyHosts: true
                    zip zipFile: 'test.zip', dir: '', overwrite: 'true', exclude: '.git'
               }
            }
        }
    }
}
