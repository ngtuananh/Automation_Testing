require 'selenium-webdriver'
driver = Selenium::WebDriver.for :firefox
driver.navigate.to 'https://google.com/'
driver.manage.window.maximize
@pageTitle = driver.title
puts @pageTitle
driver.quit