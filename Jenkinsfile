pipeline{
    agent any
    stages {
        stage("build"){
            steps{
                echo 'building2'
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