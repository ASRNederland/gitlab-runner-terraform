pipeline {
   agent {
      label 'master'
   }
   stages {
     stage ('Checkout ansible-gce'){
         steps {
            dir ('ansible-gce'){     
               git credentialsId: 'plicon_gitlab', url: 'https://gitlab.com/pli-docker/ansible-gce.git'
            }
         }    
      }
      stage ('Checkout Ceph'){
         steps {
            dir ('ceph'){
               git credentialsId: 'plicon_gitlab', url: 'https://gitlab.com/plc-rnd/ceph.git'
            }
         }    
      }
      stage ('list directory structur'){
         steps {
            sh "ls -al */"
         }
      }
   }
}