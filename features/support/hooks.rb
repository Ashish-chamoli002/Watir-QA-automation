require 'report_builder'

Before do
  @browser = BrowserHelper.browser
  @browser.window.maximize
end

After do
  @browser.cookies.clear
end

# After all scenarios
# at_exit do
#   BrowserHelper.browser.close
# end
