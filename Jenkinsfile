pipeline {
    /*Version 1.0.1*/
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                echo 'Pulling code from repo...'
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