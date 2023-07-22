@Library('my-shared-library') _

pipeline{

   agent any

   stages{

     stage('checkout code'){

         steps{
         gitCheckout(
            
           branch: 'main', 
           url: https://github.com/Vireshgit/hello-world.git

         )
         }      
     }

     stage('Unit Test maven'){

         steps{

         mvnTest()

         }
     }
   }
}


