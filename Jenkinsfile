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
        stage('copy zip'){
            steps{
                script {
                    def remote = [name: 's_marsaq', host: '10.195.59.145', user: 's_marsaq', password: 'BFu*ESV&FXiI', allowAnyHosts: true]
                    sshPut remote: remote, from: './test.zip', filterRegex: /.zip$/, into: '/tmp'
                    sshCommand remote: remote, command: "echo BFu*ESV&FXiI | sudo -S unzip -o /tmp/test.zip -d /apps/"
                    def remote1 = [name: 's_marsaq', host: '10.195.59.144', user: 's_marsaq', password: 'BFu*ESV&FXiI', allowAnyHosts: true]
                    sshPut remote: remote1, from: './test.zip', filterRegex: /.zip$/, into: '/tmp'
                    
               }
            }
        }                         
    }
}
