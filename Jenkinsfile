pipeline {
   agent {
      label 'master'
   }
   stages {
      stage ('Checkout Terraform'){
         steps {
            git credentialsId: 'plicon_gitlab', url: 'https://gitlab.com/pli-docker/terraform.git'
         }    
      }
      stage ('Checkout ansible-gce'){
         steps {
            git credentialsId: 'plicon_gitlab', url: 'https://gitlab.com/pli-docker/ansible-gce.git'
         }    
      }
      stage ('Checkout Ceph'){
         steps {
            git credentialsId: 'plicon_gitlab', url: 'https://gitlab.com/plc-rnd/ceph.git'
         }    
      }
      stage ('list directory structur'){
         steps {
            sh "ls -al"
         }
      }
   }
}