node {

    // Scripted pipeline Version 1.1
    // agent any


        stage('Build') {
                echo 'Building..'
                checkout scm
                sh "git fetch origin"
                sh "git branch -av"
                sh "scp *.sh .bashrc erocha@test-crowd.esc13.net:/home/erocha/bashscripts"
                echo 'Finish deploying to test-crowd...'
                sh "scp *.sh .bashrc erocha@test-jira.esc13.net:/home/erocha/bashscripts"
                echo 'Finish deploying to test-jira...'
                sh "scp *.sh .bashrc erocha@test-wiki.esc13.net:/home/erocha/bashscripts"
                echo 'Finish deploying to test-wiki...'
                sh "scp *.sh .bashrc erocha@test-atldb.esc13.net:/home/erocha/bashscripts"
                echo 'Finish deploying to test-atldb...'
                
        }
        stage('Test') {
                echo 'Testing..'
        }
        stage('Deploy') {
                echo 'Deploying....'
        }
}