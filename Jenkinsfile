@Library('my-shared-lib') _

pipeline{

   agent any
   stages{
     stage('checkout code'){
         steps{
         gitCheckout( 
           branch: 'master', 
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
            script{
               def SonarqubeCredentialsId = 'sonar-api'
               staticCodeAnalysis(SonarqubeCredentialsId)
            }
         }
     }
      stage('Quality gate status check: sonarqube'){
         steps{
            script{
               def SonarqubeCredentialsId = 'sonar-api'
               QualityGateStatus(SonarqubeCredentialsId)
            }
         }
     }
      stage('Maven Build'){
         steps{
            script{
               mvnTest()
            }
         }
     }
   }
}
