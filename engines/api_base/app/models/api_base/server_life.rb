module ApiBase
  class ServerLife < ApplicationRecord
    belongs_to :admin_setup, class_name: 'Admin::Setup'
  end
end
