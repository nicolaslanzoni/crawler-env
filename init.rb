require 'zeitwerk'
require 'listen'
require 'mechanize'
require 'json'
require 'ostruct'
require 'byebug'
require 'json'
require 'active_record'
#require 'mongo/geo2d'
require 'bundler'
require 'selenium-webdriver'

Selenium::WebDriver::Chrome.driver_path = "./chromedriver"


loader = Zeitwerk::Loader.new
loader.push_dir(__dir__)
# loader.push_dir("#{__dir__}/lib", namespace: Crawler)
# loader.push_dir("#{__dir__}/lib/parsers", namespace: Crawler::Parsers)
loader.push_dir(__dir__+ '/config')
loader.enable_reloading 
loader.setup 

#Bundler.require(:geocoder)
Listen.to("app") { loader.reload }.start

#loader.eager_load