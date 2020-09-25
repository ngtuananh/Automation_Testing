require 'selenium-webdriver'
driver = Selenium::WebDriver.for :firefox
driver.navigate.to 'https://www.google.com/'
driver.manage.window.resize_to(800, 800)
@currentURL = driver.current_url
puts @currentURL
driver.quit