from selenium import webdriver
from selenium.webdriver.firefox.options import Options

options = webdriver.FirefoxOptions()
options.binary_location = '/usr/bin/firefox'
browser = webdriver.Firefox(options=options)

# navigate to the Google website
browser.get("https://www.google.com")

# get the source code of the page and print it
source_code = browser.page_source
print(source_code)

# close the browser
browser.quit()
