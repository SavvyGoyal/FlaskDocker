pipeline {  environment {
    registry = "savvygoyal/docker_demo1"
    registryCredential = 'dockerhub'
  }
   agent any
   stages {
    stage("Clone from Github"){
      steps{
        git credentialsId: '48074ccb-4b1a-4a49-ac47-c3042cb1c579', url: 'https://github.com/SavvyGoyal/FlaskDocker.git', branch: 'main'
       }
    }
    stage("Building image"){
      steps{
        script{
          dockerImage = docker.build registry + ":$BUILD_NUMBER"
        }
      }
    }
    stage("DeployImage"){
        steps{
            script{
                docker.withRegistry('',registryCredential){
                dockerImage.push()
                }
            }
        }
    }
  }
}