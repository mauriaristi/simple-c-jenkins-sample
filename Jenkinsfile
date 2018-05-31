pipeline {
    agent {
        dockerfile true
    }
    stages {
        stage('Build') { 
            
            //     docker {
            //         image 'python:2-alpine' 
            //     }
            // }
            steps {
                // echo 'Building ... '
                sh ' mkdir build && make' 
            }
        }
        stage('Test') {
            
            //     docker {
            //         image 'qnib/pytest'
            //     }
            // }
            steps {
                echo 'Testing ... '
                // sh './build/example1'
            }
            // post {
            //     always {
            //         junit 'test-reports/results.xml'
            //     }
            // }
        }
    }

}