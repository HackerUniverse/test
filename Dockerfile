# Use the latest version of Ubuntu as the base image
FROM debian:latest


# Update the package repository and install required packages
RUN apt-get update && apt-get install -y wget net-tools snapd libnss3 libglib2.0-0 libnss3 libnspr4 libxcb1 libgcc1 libc6 libpcre3 libxau6 libxdmcp6 libbsd0 libmd0


# Install Chromium using 
RUN apt install chromium -y

# Install Python
RUN apt-get install -y python3 

RUN apt install -y python3-pip

# Install the latest version of Selenium
RUN pip3 install selenium

RUN pip install selenium-wire


RUN apt-get install -y unzip

RUN wget https://chromedriver.storage.googleapis.com/110.0.5481.77/chromedriver_linux64.zip

RUN unzip chromedriver_linux64.zip

RUN mv chromedriver /usr/bin/


RUN chmod +x /usr/bin/chromedriver

# Set the working directory to the app directory
WORKDIR /app/

# Copy the sample Python script to the image
COPY sample.py /app/

RUN netstat -nptln

RUN whereis chromium

RUN whereis chromedriver

RUN chromedriver --version

RUN chromedriver --version

RUN chromium --version

# Run the sample Python script
CMD ["python3", "sample.py"]
