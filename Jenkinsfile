pipeline {
    environment {
        imagename = "rashmikumariguliya7794109/jenkins-docker"
        registryCredential = "Rashmi-dockerhub"
        dockerImage = ""
    }
    agent any
    stages {
        stage('Cloning-Git') {
            steps {
                git([url: 'https://github.com/Rashmijawla/simple-docker.git', branch: 'main'])
            }
        }

        stage('Building image') {
            steps {
                script {
                    dockerImage = docker.build imagename
                }
            }
        }

        stage('Running image') {
            steps {
                script {
                    sh "docker run ${imagename}:latest"
                }
            }
        }

        stage('Deploy Image') {
            steps {
                script {
                    docker.withRegistry('', registryCredential) {
                        dockerImage.push("${BUILD_NUMBER}")
                        dockerImage.push('latest')
                    }
                }
            }
        }
    }
}
