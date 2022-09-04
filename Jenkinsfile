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
            def workspace = WORKSPACE
            def nodeImage = docker.build("examplepipe", "--no-cache ./node/")
            nodeImage.withRun() {c ->
                sh "npm run test"
            }
        }
    }
}