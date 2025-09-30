module Admin
  class SetupsController < ApplicationController
    before_action :fetch_setup, only: [:edit, :destroy, :update]

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

    def update
      if @setup.update(setup_params)
        redirect_to setups_path, notice: 'Config updated successfully'
      else
        render :edit
      end
    end

    def destroy
      @setup.destroy
      redirect_to setups_path, notice: 'Config deleted'
    end

    private

    def setup_params
      params.require(:setup).permit(:site_name, :url)
    end

    def fetch_setup
      @setup = Setup.find(params[:id])
    end
  end
end
