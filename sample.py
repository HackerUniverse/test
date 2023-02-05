from selenium import webdriver

# create a new Chrome browser instance
browser = webdriver.Chrome()

# navigate to the Google website
browser.get("https://www.google.com")

# get the source code of the page and print it
source_code = browser.page_source
print(source_code)

# close the browser
browser.quit()
