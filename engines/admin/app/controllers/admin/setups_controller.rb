module Admin
  class SetupsController < ApplicationController
    def index
      @setups = Setup.all
    end

    def new
      @setup = Setup.new
    end

    def create
      @setup = Setup.new(setup_params)
      if @setup.save
        redirect_to setups_path, notice: "Config created successfully"
      else
        render :new
      end
    end

    def destroy
      @setup = Setup.find(params[:id])
      @setup.destroy
      redirect_to setups_path, notice: 'Config deleted'
    end

    private

    def setup_params
      params.require(:setup).permit(:site_name, :url)
    end
  end
end
