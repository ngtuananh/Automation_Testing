Given('the login page is opened successfully') do
    $driver.get 'http://the-internet.herokuapp.com/login'
end
  
When('user enter username {string} and password {string}') do |string, string2|
    $driver.find_element(:id, 'username').send_keys(string)
    $driver.find_element(:id, 'password').send_keys(string2)
    $driver.find_element(css: '.fa.fa-2x.fa-sign-in').click
end
  
Then('the message {string} should be displayed') do |string|
    $message = $driver.find_element(css: '#flash').text.delete("\n")
    Kernel.puts "message: #{$message}"
    expect($message).to eql(string)
end