
node{


    stage('Build') { 
        // agent {
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
        // agent {
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

