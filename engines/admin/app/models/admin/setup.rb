module Admin
  class Setup < ApplicationRecord
    before_save :normalize_url

    validates :site_name, presence: true
    validate :url_must_be_valid

    has_many :server_lives, class_name: "ApiBase::ServerLife", dependent: :destroy

    private

    def normalize_url
      return if url.blank?

      self.url = url.start_with?('http') ? url : "https://#{url}"
    end

    def url_must_be_valid
      unless url.present? && url.starts_with?('www.', 'http://', 'https://')
        errors.add(:url, "must be valid")
      end
    end
  end
end