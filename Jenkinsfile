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
                def remote = [name: 's_marsaq', host: '10.195.59.145', user: 's_marsaq', password: 'BFu*ESV&FXiI', allowAnyHosts: true]
                zip zipFile: 'test.zip',overwrite: 'true',exclude: '.git'
                sshPut remote: remote, from: './', filterRegex: /.zip$/, into: '/tmp'
                sudo unzip -o /tmp/test.zip -d /tmp/
               }
            }
        }
    }
}
