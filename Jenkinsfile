pipeline  {
    agent {
         docker {
            image 'maven:3-alpine'
        }
    }
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Build') {
            steps {
                echo 'build'
                sh 'mvn -s /usr/share/maven/conf-user/settings.xml -B -DskipTests -Ddockerfile.skip clean package'
            }
        }
        stage('Test') {
            steps {
                echo 'test'
            }
        }
        stage('Deploy') {
            steps {
                echo 'deploy'
            }
        }
    }

}