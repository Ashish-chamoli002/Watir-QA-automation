# features/support/pages/login_page.rb
require_relative 'base_page'

module Pages
  class LoginPage < Pages::BasePage

    text_field(:username, name: 'username')
    text_field(:password, name: 'password')
    button(:login_button, type: 'submit')
    div(:alert_message, role: 'alert')


    def login(user, password)
      self.username = user
      self.password = password
      login_button
      wait_for_dom
      DashboardPage.new(@browser)
    end

    def navigate_to
      browser.goto("https://opensource-demo.orangehrmlive.com/web/index.php/auth/login")
    end

    def invalid_credential?
      wait_for_dom
      alert_message == 'Invalid credentials'
    end

    private
    #page_url("#{::CONFIG['base_url']}/auth/login")
    page_url("https://opensource-demo.orangehrmlive.com/web/index.php/auth/login")
  end
end