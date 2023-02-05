from selenium import webdriver
from selenium.webdriver.firefox.service import Service as FirefoxService
from webdriver_manager.firefox import GeckoDriverManager
import os

executable_path = GeckoDriverManager().install()

log_path = os.path.join(os.getcwd(), "geckodriver.log")

service = FirefoxService(executable_path)

options = webdriver.FirefoxOptions()
options.add_argument('--headless')

browser = webdriver.Firefox(service=service, options=options)

browser.get("https://www.google.com")

browser.quit()
