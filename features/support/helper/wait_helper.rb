
module Helper
  module WaitHelper
    def wait_until_element_visible(element, timeout: 30)
      Watir::Wait.until(timeout: timeout) { element.present? }
    end

    def wait_until_ajax_complete
      Watir::Wait.until { browser.execute_script('return jQuery.active').zero? }
    end
  end
end
