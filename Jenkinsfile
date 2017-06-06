node {

    // Scripted pipeline Version 1.0
    // agent any


        stage('Build') {
                echo 'Building..'
                checkout scm
                sh "git fetch origin"
                sh "git branch -av"
        }
        stage('Test') {
                echo 'Testing..'
        }
        stage('Deploy') {
                echo 'Deploying....'
        }
}