pipeline {

    // Version 1.0.0
    node {
            git credentialsId: '22e29ed6-c51b-4dd9-bf04-41dad15eedd8', url: 'https://github.com/wuayorm/bashscripts.git'

         }
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
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