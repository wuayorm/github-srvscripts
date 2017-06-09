node {

    // Scripted pipeline Version 1.0
    // agent any


        stage('Build') {
                echo 'Building..'
                checkout scm
                sh "git fetch origin"
                sh "git branch -av"
                sh "scp *.sh .bashrc test-crowd.esc13.net:/home/erocha/bashscripts"
                sh "scp *.sh .bashrc test-jira.esc13.net:/home/erocha/bashscripts"
                sh "scp *.sh .bashrc test-wiki.esc13.net:/home/erocha/bashscripts"
                sh "scp *.sh .bashrc test-atldb.esc13.net:/home/erocha/bashscripts"
                
        }
        stage('Test') {
                echo 'Testing..'
        }
        stage('Deploy') {
                echo 'Deploying....'
        }
}