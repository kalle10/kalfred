class ServicesController < ApplicationController
  def index
  end
def show
  	@services = params[:name]
  end
end
