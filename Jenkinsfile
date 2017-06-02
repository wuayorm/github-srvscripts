pipeline {

    // Version 1.0.0
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                sh "git checkout master"
                sh "git pull srv-scripts"
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