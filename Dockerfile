# Use the latest version of Ubuntu as the base image
FROM ubuntu:latest

USER root

# Update the package repository and install required packages
RUN apt-get update && apt-get install -y wget unzip snapd

# Install Chromium using 
RUN apt install chromium-browser


# Install Chromium using 
RUN apt install chromium-chromedriver

# Install Python
RUN apt-get install -y python3

# Install the latest version of Selenium
RUN pip3 install selenium



# Set the working directory to the app directory
WORKDIR /app/

# Copy the sample Python script to the image
COPY sample.py /app/


# Run the sample Python script
CMD ["python3", "sample.py"]
