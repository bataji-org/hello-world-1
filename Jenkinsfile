@Library('my-shared-library') _

pipeline{

   agent any

   stages{

     stage('checkout code'){

         steps{
         gitCheckout(
            
           branch: 'master', 
           url: 'https://github.com/bataji-org/hello-world-1.git'

         )
         }      
     }
   }
}


