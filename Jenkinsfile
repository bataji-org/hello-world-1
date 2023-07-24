@Library('my-shared-lib') _

pipeline{

   agent any
   
   stages{

     stage('checkout code'){
        
         steps{
         gitCheckout(
            
           branch: 'main', 
           url: "https://github.com/bataji-org/hello-world-1.git"

         )
         }      
     }

     stage('Unit Test maven'){
       

         steps{

         mvnTest()

         }
     }
      stage('Integration Test maven'){
         

         steps{

         mvnIntegrationTest()

         }
     }
      stage('static code check: sonarqube'){
         

         steps{
            
             def SonarqubeCredentialsId = 'sonar-api'
             staticCodeAnalysis(SonarqubeCredentialsId)

         }
     }
   }
}

