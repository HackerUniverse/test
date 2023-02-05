node {
  stage('Checkout') {
    checkout scm
  }
  
  stage('Build Docker image') {
   sudo sh 'docker build -t selenium-image .'
  }
  
  stage('Run Selenium script in Docker container') {
   sudo sh 'docker run -it --rm selenium-image python sample.py'
  }
}
