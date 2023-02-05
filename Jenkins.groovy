node {
  stage('Checkout') {
    checkout scm
  }
  
  stage('Build Docker image') {
    sh 'docker build -t Dockerfile .'
  }
  
  stage('Run Selenium script in Docker container') {
    sh 'docker run -it --rm selenium-image python sample.py'
  }
}
