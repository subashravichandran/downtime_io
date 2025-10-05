module ApiBase
  class HomeController < ApplicationController
    def index
      render plain: 'Api Base Home page'
    end
  end
end