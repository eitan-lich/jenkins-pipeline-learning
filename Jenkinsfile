pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                // This happens automatically with SCM polling
                echo 'Code checked out from GitHub'
            }
        }
        
        stage('Build') {
            steps {
                echo 'Building application...'
                // Add your build commands here
                // sh 'npm install' (for Node.js)
                // sh 'mvn clean compile' (for Java)
                // sh 'docker build -t myapp .' (for Docker)
            }
        }
        
        stage('Test') {
            steps {
                echo 'Running tests...'
                // Add your test commands here
                // sh 'npm test'
                // sh 'mvn test'
                // sh 'pytest'
            }
        }
        
        stage('Deploy') {
            steps {
                echo 'Deploying application...'
                // Add deployment commands here
                // sh 'docker run -d myapp'
                // sh 'kubectl apply -f deployment.yaml'
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
