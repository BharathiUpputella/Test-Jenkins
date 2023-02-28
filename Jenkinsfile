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
                    def remote = [name: 's_marsaq', host: '10.195.59.145', user: 's_marsaq', password: 'BFu*ESV&FXiI', allowAnyHosts: true]
                    sshPut remote: remote, from: './', filterRegex: /.zip$/, into: '/tmp'
               }
            }
        }
    }
}
