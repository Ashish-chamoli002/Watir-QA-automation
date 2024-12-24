# features/support/env.rb
require 'watir'
require 'yaml'
require_relative 'pages/base_page'
require_relative 'pages/login_page'
require 'rspec'
require 'factory_bot'
require 'pry'
require 'page-object'

# Simple browser management
module BrowserHelper
  def self.browser
    @browser ||= Watir::Browser.new :chrome, options: chrome_options
  end

  def self.chrome_options
    options = Selenium::WebDriver::Chrome::Options.new
    options.add_argument('--disable-translate')
    options.add_argument('--headless') if ENV['HEADLESS']
    options.add_argument('--no-sandbox') if ENV['CI']
    options
  end
end

ENVIRONMENT = ENV['ENV'] || 'test'
CONFIG = YAML.safe_load(
  File.read(File.join(Dir.pwd, 'config', 'config.yml')),
  aliases: true
)[ENVIRONMENT]

World(FactoryBot::Syntax::Methods)


# Make browser accessible in cucumber steps
World(BrowserHelper)



