node {
    stage('Checkout') {
        checkout scm
    }
    stage('Build') {
       echo 'build'
       withMaven (maven: 'M3')mavenLocalRepo: '.repository') {
            sh "mvn clean install -Dmaven.test.skip=true"
       }
    }
    stage('Test') {
        echo 'test'
    }
    stage('Deploy') {
        echo 'deploy'
    }
}