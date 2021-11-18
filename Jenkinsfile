def pipelineContext = [:]
node {

   def registryProjet='ms_discount'
   def IMAGE="${registryProjet}:version-${env.BUILD_ID}"
   def DB='mongo:latest'
    stage('Clone') {
          checkout scm
    }

       img = stage('Build') {
          docker.build("$IMAGE",  '.')
    }

    
    stage('Test') {
          img.withRun("--name run-$BUILD_ID -p 3004:3001") { 
           docker.image("${DB}").withRun(' -p 27023:27017'){c ->
            sh 'docker ps'
            }
          }
    }


    stage('Push') {
          docker.withRegistry('https://213.32.95.79:5000', 'reg1') {
              img.push 'latest'
              img.push()
          }
    }

}
