pipeline{
    agent any
    stages {
        stage("build"){
            steps{
                echo 'building'
                echo 'building'
                def customImage = docker.build("noborepo:${env.BUILD_ID}")
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