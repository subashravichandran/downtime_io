module Admin
  class AdminSetupController < ApplicationController
    def index
      @setups = Setup.all
    end
  end
end
