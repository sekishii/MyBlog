def label = "jenkins-slave-it-${UUID.randomUUID().toString()}"
podTemplate(label: label,
containers: [
  containerTemplate(name: 'maven', image: 'maven:3.5.3-jdk-8-alpine', command: 'cat', ttyEnabled: true),
],
volumes: [
  hostPathVolume(mountPath: '/var/run/docker.sock', hostPath: '/var/run/docker.sock'),
  configMapVolume(mountPath: '/usr/share/maven/conf-user', configMapName: 'maven-settings')
]) {
    node(label)  {
        stage('Checkout') {
            checkout scm
        }
        stage('Build') {
            echo 'build'
            container('maven') {
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
}