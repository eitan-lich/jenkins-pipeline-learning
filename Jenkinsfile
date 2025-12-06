pipeline {
    agent any
    
    stages {
        stage('Build and install required dependencies') {
            steps {
                echo 'Building the project and installing dependencies...'
                sh """
                npm ci
                cat package.json
                """
                
            }
        }

   
        stage('Start server and perform health check') {
            steps {
                echo 'Starting server and performing health check...'
                sh '''
                npm start &
                sleep 5 # Wait for server to start
                response=$(curl http://localhost:8082)
                echo "The response from the server was: $response"
                '''
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
