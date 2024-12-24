require 'watir'
require 'rspec'
require 'page-object'
require_relative '../helper/wait_helper'

module Pages
  class BasePage
    include PageObject
    include RSpec::Matchers
    include Helper::WaitHelper

    def initialize(browser)
      @browser = browser
      super(browser)
    end

    def wait_for_dom
      Watir::Wait.until do
        browser.execute_script('return document.readyState') == 'complete'
      end
    end


    def process_new_window(window)
      switch_to_new_window(window)
      maximize_window
      wait_for_new_window
      wait_for_ready_state
    end

    private

    attr_reader :browser

    def switch_to_new_window(window)
      if window.is_a?(Hash)
        browser.window(window).use
      else
        browser.switch_window
      end
    end

    def maximize_window
      browser.window.maximize
    end

    def wait_for_new_window
      Watir::Wait.until { browser.url != 'about:blank' }
    end

    def wait_for_ready_state
      Watir::Wait.until do
        ready_state = browser.execute_script('return document.readyState;')
        %w[complete interactive].include?(ready_state)
      end
    end
  end
end