class HomeController < ApplicationController
  def home
  end
  
  def contact
  end
  
  def request_contact
    name = params[:name]
    email = params[:email]
    mobile = params[:mobile]
    message = params[:message]
    
    if email.blank?
      flash[:alert] = l18n.t('home.request_contact.no_email')
    else
      # send email
      flash[:notice] = l18n.t('home.request_contact.email_sent')
    end
    redirect_to root_path
  end
end
