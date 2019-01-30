{
    node(label)  {
        stage('Checkout') {
            checkout scm
        }
        stage('Build') {
            echo 'build'
                sh 'mvn -s /usr/share/maven/conf-user/settings.xml -B -DskipTests -Ddockerfile.skip clean package'
        }
        stage('Test') {
            echo 'test'
        }
        stage('Deploy') {
            echo 'deploy'
        }
    }
}