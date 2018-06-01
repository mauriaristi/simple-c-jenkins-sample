// Jenkins file to build and test the C-project.
pipeline {
    
    // Environment requirements defined in Dockerfile
    agent {
        dockerfile true
    }

    // Stages of the process
    stages {

        // 1. Build the system.
        stage('Build') { 
            
            steps {
                sh 'make clean && make' 
            }
        }

        // 2. Run the tests.
        stage('Test') {
            
            steps {
                sh './build/tests'
            }
            
        }
    }

}