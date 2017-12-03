class HomeController < ApplicationController
  def home
    @albums = Album.all
  end
  
  def contact
  end
  
  def request_contact
    name = params[:name]
    email = params[:email]
    mobile = params[:mobile]
    message = params[:message]
    
    if email.blank?
      flash[:alert] = I18n.t('home.request_contact.no_email')
      redirect_to contact_path
    else
      ContactMailer.contact_email(email, name, mobile, message).deliver_now
      flash[:notice] = I18n.t('home.request_contact.email_sent')
      redirect_to root_path
    end
  end
end
