node()  {
    stage('Checkout') {
        checkout scm
    }
    stage('Build') {
        echo 'build'
        docker.image('maven:3.5.3-jdk-8-alpine').inside('-v $HOME/.m2:/root/.m2') {
            sh 'mvn -s /usr/share/maven/conf-user/settings.xml -B -DskipTests -Ddockerfile.skip clean package'
        }
    }
    stage('Test') {
        echo 'test'
    }
    stage('Deploy') {
        echo 'deploy'
    }
}