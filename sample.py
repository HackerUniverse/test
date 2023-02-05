import logging
import sys
import os

log_path = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'geckodriver.log')

logging.basicConfig(
    level=logging.INFO,
    filename=log_path,
    filemode='w',
    format='%(asctime)s [%(levelname)s] %(message)s',
    datefmt='%Y-%m-%d %H:%M:%S'
)

logger = logging.getLogger('geckodriver')

sys.stderr = sys.stdout = logger

from selenium import webdriver
from selenium.webdriver.firefox.service import Service as FirefoxService
from webdriver_manager.firefox import GeckoDriverManager

executable_path = GeckoDriverManager().install()
service = FirefoxService(executable_path)
service.start()

options = webdriver.FirefoxOptions()
options.headless = True

browser = webdriver.Firefox(options=options, service=service)



browser.get("https://www.google.com")

browser.quit()
