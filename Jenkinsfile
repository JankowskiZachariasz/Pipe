pipeline{
    agent { dockerfile true }
    stages {
        stage("build"){
            steps{
                echo 'building4'
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