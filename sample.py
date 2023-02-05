import os
import sys
import tempfile

from selenium import webdriver
from selenium.webdriver.firefox.service import Service as FirefoxService
from webdriver_manager.firefox import GeckoDriverManager

# Create a temporary directory to store the logs
log_directory = /home/ubuntu/

# Set the log path
log_path = os.path.join(log_directory, "geckodriver.log")

# Get the path of the geckodriver binary
executable_path = GeckoDriverManager().install()

# Create the Firefox service
service = FirefoxService(executable_path)

# Create the options for the Firefox browser
options = webdriver.FirefoxOptions()
options.headless = True

# Create the Firefox driver
driver = webdriver.Firefox(service=service, options=options)

# Use the driver as needed
driver.get("https://www.google.com/")
print(driver.title)

# Close the driver
driver.quit()




