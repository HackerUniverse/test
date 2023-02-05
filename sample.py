from selenium import webdriver
from webdriver_manager.firefox import GeckoDriverManager

# Use webdriver-manager to manage the geckodriver
executable_path = GeckoDriverManager().install()
log_path = '/tmp/geckodriver.log'
browser = webdriver.Firefox(executable_path=executable_path, service_log_path=log_path)


# navigate to the Google website
browser.get("https://www.google.com")

# get the source code of the page and print it
source_code = browser.page_source
print(source_code)

# close the browser
browser.quit()
