@Library('my-shared-library') _

pipeline{

   agent any
   parameters {
     choice choices: ['create', 'delete'], description: 'choose create/delete', name: 'action'
   }

   stages{

     stage('checkout code'){
         when {
           environment name: 'action', value: 'create'
         }

         steps{
         gitCheckout(
            
           branch: 'main', 
           url: "https://github.com/bataji-org/hello-world-1.git"

         )
         }      
     }

     stage('Unit Test maven'){
        when {
           environment name: 'action', value: 'delete'
         }

         steps{

         mvnTest()

         }
     }
      stage('Integration Test maven'){
          when {
           environment name: 'action', value: 'delete'
         }

         steps{

         mvnIntegrationTest()

         }
     }
      stage('static code check: sonarqube'){
          when {
           environment name: 'action', value: 'delete'
         }

         steps{
         def SonarqubeCredentialsId = 'sonar-api'
         staticCodeAnalysis(SonarqubeCredentialsId)

         }
     }
   }
}

