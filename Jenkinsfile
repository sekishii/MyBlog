node()  {
    stage('Checkout') {
        checkout scm
    }
    stage('Build') {
        echo 'build'
        docker.image('maven:3.5.3-jdk-8-alpine').inside('-v $HOME/.m2:/root/.m2') {
            echo 'test'
        }
    }
    stage('Test') {
        echo 'test'
    }
    stage('Deploy') {
        echo 'deploy'
    }
}