pipeline  {
    agent {
         docker {
            image 'maven:3.5.3-jdk-8-alpine'
        }
    }
    stages {
        stage('Checkout') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: '5fb7fe9f-0a24-43c5-b450-ce43dfb18fe7', url: 'https://github.com/sekishii/MyBlog.git']]])
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