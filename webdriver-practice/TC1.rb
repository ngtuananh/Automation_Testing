require 'selenium-webdriver'
require 'webdrivers' # chromedriver
driver = Selenium::WebDriver.for :firefox
driver.get 'https://google.com'
driver.quit
