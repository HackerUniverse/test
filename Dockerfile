# Use the latest version of Ubuntu as the base image
FROM ubuntu:latest

USER root

# Update the package repository and install required packages
RUN apt-get update && apt-get install -y wget unzip snapd

# Install Chromium using snap
RUN sudo snap install chromium

# Install Python
RUN apt-get install -y python3

# Install the latest version of Selenium
RUN pip3 install selenium

# Download the Chrome Driver
RUN wget https://chromedriver.storage.googleapis.com/109.0.5414.74/chromedriver_linux64.zip

# Unzip the Chrome Driver
RUN unzip chromedriver_linux64.zip


# Set the working directory to the app directory
WORKDIR /app/

# Copy the sample Python script to the image
COPY sample.py /app/

# Move the Chrome Driver to the snap/bin directory
RUN mv chromedriver /app/

# Run the sample Python script
CMD ["python3", "sample.py"]
