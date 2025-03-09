pipeline{
    agent any
    stages{
        stage('clone'){
            steps{
                sh 'echo "hello world"'
            }
        }
         stage('test'){
            steps{
                sh 'echo "test"'
                sh "nproc"
                sh "u-name'"
            }
        }
         stage('create file '){
            steps{
                sh 'touch text-$BUILD_ID''
            }
        }

    }


    stages{
        stage('clone'){
            steps{
                sh 'pwd'
            }
        }
         stage('build'){
            steps{
                sh 'ls'
                sh "nproc"
                sh "u-name'"
            }
        }
         stage('clone '){
            steps{
                sh 'pwd'
            }
        }


    }
}
