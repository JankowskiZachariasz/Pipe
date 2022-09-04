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
            def workspace = pwd()
            def nodeImage = docker.build("examplepipe", "./node/")
            nodeImage.withRun('-v '+&{workspace}+':/usr/src/app') {c ->
                sh "npm install"
                sh "npm test"
            }
        }
    }
}