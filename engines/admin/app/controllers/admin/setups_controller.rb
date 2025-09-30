module Admin
  class SetupsController < ApplicationController
    def index
      @setups = Setup.all
    end
  end
end
