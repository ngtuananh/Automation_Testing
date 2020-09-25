require 'selenium-webdriver'
driver = Selenium::WebDriver.for :firefox
driver.get 'https://www.google.com'
driver.manage.window.maximize
@pageSource = driver.page_source
puts @pageSource
driver.quit