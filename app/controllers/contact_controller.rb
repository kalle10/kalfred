class ContactController < ApplicationController
  def index
  end
  def show
  	@contact = params[:name]
  end
end
