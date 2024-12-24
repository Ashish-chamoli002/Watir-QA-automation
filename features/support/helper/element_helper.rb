module Helper
  module ElementHelper
    def find_in_list(list, criteria)
      list.find do |item|
        criteria.all? { |key, value| item[key] == value }
      end
    end

    def wait_until_present(element, timeout: 30)
      Watir::Wait.until(timeout: timeout) { element.present? }
    end

    def wait_until_enabled(element, timeout: 30)
      Watir::Wait.until(timeout: timeout) { element.enabled? }
    end
  end
end
