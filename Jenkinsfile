pipeline {
    agent any
    stages {
        stage('Clone') {
            steps {
                git branch: 'main',
                url: 'https://github.com/ITI255sml/session-rattrapage.git',
                credentialsId: 'GITCRD'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn  clean install'
            }
        }
        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }
        stage('Sonar') {
            steps {
               sh ''
            }
        }
        stage('Package') {
            steps {
                sh 'mvn package'
            }
        }
        /*stage('Deploy') {
            steps {
                        nexusArtifactUploader(
                            nexusVersion: 'nexus3',
                            protocol: 'http',
                            nexusUrl: 'localhost:8081/nexus',
                            groupId: 'com.esprit.examen',
                            version: '1.0',
                            repository: 'devOps-project-releases',
                            credentialsId: 'nexus_creds',
                            artifacts: [
                                [artifactId: 'tpAchatProject',
                                 classifier: '',
                                 file: 'target/tpAchatProject-1.0.jar',
                                 type: 'jar']
                            ]
                         )
            }
        }
        stage('docker-build') {
            steps {
                sh 'curl -u admin:admin -O http://localhost:8081/nexus/repository/devOps-project-releases/com/esprit/examen/tpAchatProject/1.0/tpAchatProject-1.0.jar'
                script {
                            docker.withRegistry('https://index.docker.io/v1', 'dockerhub_creds') {
                            }
                }

            }
        }
               stage('docker-push') {
                 steps {
                     withCredentials([usernamePassword(credentialsId: 'dockerhub_creds', usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD')]) {
                       sh "docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD"
                    
                      }
                 }
               }

            stage('docker-pull') {
                  steps {
                    script {
                      docker.withRegistry("https://registry.hub.docker.com", "dockerhub_creds") {
                        docker.image(imageName).pull()
                      }
                    }
                  }
                }*/

       
   

    }
}

