pipeline{
    agent { dockerfile {
        filename 'Dockerfile'
        dir 'node'
    } }
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