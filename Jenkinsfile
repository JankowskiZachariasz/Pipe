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
            def nodeImage = docker.build("examplepipe", "./node/")
            nodeImage.withRun("-v /var/jenkins_home/workspace/test-pipe_feature_SB-5/node:/usr/src/app") {c ->
                sh "cd /usr/src/app"
                sh "apt install nodejs"
                sh "npm install"
                sh "npm test"
            }
        }
    }
}