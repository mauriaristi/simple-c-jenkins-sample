pipeline {
    agent {
        dockerfile true
    }
    stages {
        stage('Build') { 
            agent none
            //     docker {
            //         image 'python:2-alpine' 
            //     }
            // }
            steps {
                // echo 'Building ... '
                sh 'make' 
            }
        }
        stage('Test') {
            agent none
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