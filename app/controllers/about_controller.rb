class AboutController < ApplicationController
  def index
  end

def show
  	@about = params[:name]
  end
end