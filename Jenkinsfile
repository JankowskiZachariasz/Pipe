node {
    stage('Step1') {

        if (env.BRANCH_NAME == 'qa') {
            echo 'Hello from qa'
        }
        else if (env.BRANCH_NAME == 'prod') {
            echo 'Hello from prod'
        }  
        else {
            echo 'Hello from PR'
            def nodeImage = docker.build("examplepipe", "./node/")
            nodeImage.inside {
                sh 'npm test'
            }
        }
    }
}