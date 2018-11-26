pipeline {
    agent any
    stages {
        stage('Build image') {
            steps {
                echo 'Starting to build docker image for app'

                /* TODO Specify Docker Image Name */
                sh 'docker build -t kracken/next-boilerplate .'
            }
        }
        stage('Remove previous container') {
            steps {
                echo 'Removing the previous container'

                /* TODO Specify Docker Container Name */
                sh 'docker rm -f kraken-next-boilerplate || true'
                sh 'docker rm -f mongo || true'
            }
        }
        stage('Clean dangling images') {
            steps {
                echo 'Cleaning the <none>:<none> dangling images'

				sh 'docker images --no-trunc --all --quiet --filter="dangling=true" | xargs --no-run-if-empty docker rmi'
            }
        }
        stage('Run the App') {
            steps {
                echo 'Running the new version of the app !'

				sh 'docker-compose up -d'
            }
        }
    }
}