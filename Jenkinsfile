@Library('my-shared-lib') _

pipeline{

   agent any
   
   parameters {
   choice choices: ['create', 'delete'], description: 'choose create/delete', name: 'action'
   }

   stages{
     when {
     environment name: 'action', value: 'create'
     }
     stage('checkout code'){

         steps{
         gitCheckout(
            
           branch: 'master', 
           url: 'https://github.com/bataji-org/hello-world-1.git'

         )
         }      
     }
      stage('Unit Test mvn'){
      when {
      environment name: 'action', value: 'create'
      }
         steps{
         mvnTest()
         }      
     }
      stage('integrationTest mvn'){
      when {
      environment name: 'action', value: 'create'
      }

         steps{
         mvnIntegrationTest()
         }      
     }
   }
}


