require 'selenium-webdriver'
driver = Selenium::WebDriver.for :firefox
driver.get 'https://www.google.com/'
driver.manage.window.resize_to(1000, 1000)
search_box = driver.find_element(name: 'q')
search_box.send_keys 'iTMS Coaching', :return
sleep 2
puts driver.title
driver.quit