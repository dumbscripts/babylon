require 'capybara/cucumber'

Capybara.register_driver :selenium_chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.configure do |config|
  config.run_server = false
  config.default_driver = :selenium_chrome
  config.app_host = 'https://syd1.aconex.com/'
  config.default_max_wait_time = 10
end