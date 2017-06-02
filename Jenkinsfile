pipeline {

    // Version 1.0.0
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                git credentialsId: '22e29ed6-c51b-4dd9-bf04-41dad15eedd8', url: 'https://github.com/wuayorm/srv-scripts.git'

                //sh "git fetch srv-scripts"
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}