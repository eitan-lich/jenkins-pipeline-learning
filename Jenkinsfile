pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                echo 'Git project should be cloned automatically because we are running a multi-branch pipeline'            
                sh 'pwd && ls -lah'
            }
        }

        stage('Build and install required dependencies') {
            steps {
                echo 'Building the project and installing dependencies...'
                sh 'npm i'
            }
        }

        stage('Start server and perform health check') {
            steps {
                echo 'Starting server and performing health check...'
                sh 'npm start &'
                sh 'sleep 5' // Wait for server to start
                sh 'curl -f http://localhost:8082/health || exit 1'
            }
        }
    }
    
    post {
        success {
            echo 'Pipeline completed successfully!'
        }
        failure {
            echo 'Pipeline failed!'
        }
        always {
            echo 'Cleaning up...'
            // Clean up commands here
        }
    }
}
