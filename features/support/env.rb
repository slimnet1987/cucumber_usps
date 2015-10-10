require 'selenium-webdriver'
require 'rspec'
require 'pry'

require_relative '../page_model/page_actions.rb'


# load all .rb files before...
Dir["../page_model/*.rb"].each {|file| require file}

DEFAULT_TIMEOUT = 10

def create_browser
  @browser = Selenium::WebDriver.for :firefox
  @browser.manage.timeouts.implicit_wait = DEFAULT_TIMEOUT #for waiting an elements on the needed page
end

def usps
  @usps ||= USPS.new @browser
end