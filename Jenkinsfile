@Library('my-shared-lib') _

pipeline{

   agent any
   parameters {
     string defaultValue: 'vnaik1', description: 'enter hubUserName', name: 'hubUserName'
     string defaultValue: 'helloimage', description: 'enter imageName', name: 'imageName'
     string defaultValue: 'v1', description: 'enter imageTag', name: 'imageTag'
   }

   
   stages{
     stage('checkout code'){
         steps{
         gitCheckout( 
           branch: 'master', 
           url: "https://github.com/bataji-org/hello-world-1.git"
         )
         }      
     }
     // stage('Unit Test maven'){
     //     steps{
     //     mvnTest()
     //     }
     // }
     //  stage('Integration Test maven'){
     //     steps{
     //     mvnIntegrationTest()
     //     }
     // }
     //  stage('static code check: sonarqube'){
     //     steps{
     //        script{
     //           def SonarqubeCredentialsId = 'sonar-api'
     //           staticCodeAnalysis(SonarqubeCredentialsId)
     //        }
     //     }
     // }
     //  stage('Quality gate status check: sonarqube'){
     //     steps{
     //        script{
     //           def SonarqubeCredentialsId = 'sonar-api'
     //           QualityGateStatus(SonarqubeCredentialsId)
     //        }
     //     }
     // }
      stage('Maven Build'){
         steps{
            script{
               buildMaven()
            }
         }
     }
     stage('Build docker Image'){
         steps{
            script{
               dockerBuild("${params.hubUserName}", "${params.imageName}", "${params.imageTag}")
            }
         }
     }
      stage('Push docker Image'){
         steps{
            script{
               pushImagedhub("${params.hubUserName}", "${params.imageName}", "${params.imageTag}")
            }
         }
     }
   }
}
