from seleniumwire import webdriver

chrome_options = webdriver.ChromeOptions()
chrome_options.add_argument('--no-sandbox')
chrome_options.add_argument('--headless')
driver = webdriver.Chrome(executable_path='/usr/bin/chromedriver', options=chrome_options)
# Go to the Google home page
driver.get('https://example.com')

print(driver.title)

# Access requests via the `requests` attribute
for request in driver.requests:
    if request.response:
        print(
            request.url,
            request.response.status_code,
            request.response.headers['Content-Type']
        )
driver.quit()
