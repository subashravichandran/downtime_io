module Admin
  class Setup < ApplicationRecord
    before_save :normalize_url

    private

    def normalize_url
      return if url.blank?

      self.url = url.start_with?('http') ? url : "https://#{url}"
    end
  end
end