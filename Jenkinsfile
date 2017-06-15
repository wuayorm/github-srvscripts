node {

    // Scripted pipeline Version 1.1
    // agent any


        stage('Build') {
                echo 'Building..'
                //checkout scm
                build: '../serverscripts'
        }
        stage('Test') {
                echo 'Testing..'
        }
        stage('Deploy') {
                echo 'Deploying....'
        }
}