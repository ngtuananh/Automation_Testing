require 'selenium-webdriver'
driver = Selenium::WebDriver.for :firefox
driver.get 'https://google.com'
driver.manage.window.resize_to(720,720)
driver.quit
