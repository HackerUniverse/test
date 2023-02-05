import os
from selenium import webdriver
from selenium.webdriver.firefox.service import Service as FirefoxService
from webdriver_manager.firefox import GeckoDriverManager
from selenium.webdriver.firefox.options import Options

# setting the firefox options
options = Options()
options.headless = True

# setting the path for geckodriver log
log_path = "/tmp/geckodriver.log"

# installing geckodriver
executable_path = GeckoDriverManager().install()

try:
    with open(log_path, "w") as log_file:
        pass
except PermissionError:
    log_path = None

# creating the firefox service
service = FirefoxService(executable_path, log_file=log_path)

# creating the firefox driver
driver = webdriver.Firefox(service=service, options=options)

# performing a sample action with the driver
driver.get("https://www.google.com/")
print(driver.title)

# closing the driver
driver.quit()
