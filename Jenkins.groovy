node {
  stage('Checkout') {
    checkout scm
  }
  
  stage('Build Docker image') {
   sh 'docker build -t selenium-image .'
  }
  
  stage('Run Selenium script in Docker container') {
   sh 'docker run --rm selenium-image python sample.py'
  }
}
