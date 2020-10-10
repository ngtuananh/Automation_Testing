require 'selenium-webdriver'
require 'rspec'
$driver = Selenium::WebDriver.for :firefox

at_exit do
    $driver.quit
end
