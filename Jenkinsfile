node {

    // Scripted pipeline Version 1.0
    // agent any


        stage('Build') {
            steps {
                echo 'Building..'
                checkout scm
                sh "git fetch origin"
                sh "git branch -av"
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