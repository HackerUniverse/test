from selenium import webdriver
from selenium.webdriver.firefox.options import Options

options = webdriver.FirefoxOptions()
options.add_argument('--headless')
options.binary_location = '/usr/bin/firefox'
browser = webdriver.Firefox(options=options)

# navigate to the Google website
p = browser.get("https://www.tmforum.org/about-tm-forum/contact-us/")

print(p)

# close the browser
browser.quit()
