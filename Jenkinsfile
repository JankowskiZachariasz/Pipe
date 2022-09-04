pipeline{
    agent any
    stages {
        stage("build"){
            steps{
                checkout scm
                echo 'building3'
                def customImage = docker.build("noborepo:letsts")
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