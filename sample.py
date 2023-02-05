from selenium import webdriver

# create a new Firefox browser instance
browser = webdriver.Firefox()

# navigate to the Google website
browser.get("https://www.google.com")

# get the source code of the page and print it
source_code = browser.page_source
print(source_code)

# close the browser
browser.quit()
