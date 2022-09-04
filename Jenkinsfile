node {
    env.GIT_REPO_NAME = env.GIT_URL.replaceFirst(/^.*\/([^\/]+?).git$/, '$1')
    checkout scm
    def customImage = docker.build(env.GIT_REPO_NAME, "./node/Dockerfile")

}