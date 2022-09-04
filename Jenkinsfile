pipeline{
    agent any
    stages {
        stage("build"){
            steps{
                checkout scm
                echo 'building3'
                node {
                    checkout scm
                    def customImage = docker.build("my-image:${env.BUILD_ID}")
                }

                echo 'built'
            }
        }
        stage("test"){
            steps{
                echo 'testing'
            }
        }
        stage("deploy"){
            steps{
                echo 'deploying'
            }
        }
    }
}