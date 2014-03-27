class ContactController < ApplicationController
  def index
  end
  def show
  	@contact = params[:name]
  end

  def contact
  	UserMailer.contact_email(params[:name], params[:email], params[:phone],
  		params[:message]).deliver
  	flash[:notice]= "Email Sent! Thank you!"
  	redirect_to '/'
  end
end
