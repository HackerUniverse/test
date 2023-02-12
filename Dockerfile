# Use the latest version of Ubuntu as the base image
FROM ubuntu:latest

USER root

# Update the package repository and install required packages
RUN apt-get update && apt-get install -y wget net-tools

# Install Chromium using 
RUN apt install chromium-browser -y


# Install Chromium using 
RUN apt install chromium-chromedriver -y

# Install Python
RUN apt-get install -y python3

RUN apt install -y python3-pip

# Install the latest version of Selenium
RUN pip3 install selenium

RUN pip install selenium-wire

RUN chmod +x /usr/bin/chromedriver

# Set the working directory to the app directory
WORKDIR /app/

# Copy the sample Python script to the image
COPY sample.py /app/

RUN netstat -nptln

# Run the sample Python script
CMD ["python3", "sample.py"]
