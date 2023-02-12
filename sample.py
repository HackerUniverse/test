from selenium import webdriver

chrome_options = webdriver.ChromeOptions()
chrome_options.add_argument('--no-sandbox')
chrome_options.add_argument('--headless')
driver = webdriver.Chrome(options=chrome_options)
# Go to the Google home page
driver.get('https://example.com')

print(driver.title)

