pipeline {
    /*Version 1.0.1*/
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                echo 'Pulling code from repo...'
                git credentialsId: '22e29ed6-c51b-4dd9-bf04-41dad15eedd8', url: 'https://github.com/wuayorm/bashscripts.git'

            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                echo 'Deploy to testing servers for test...'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
                echo 'Deploying to production servers...'
            }
        }
    }
}