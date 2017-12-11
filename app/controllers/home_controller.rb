class HomeController < ApplicationController
  
  # get all albums to display on the home page
  def home
    @albums = Album.all
  end
  
  def contact
  end
  
  def request_contact
    # parameters required for contact form
    name = params[:name]
    email = params[:email]
    mobile = params[:mobile]
    message = params[:message]
    
    # if email field blank, let user know they need to input email and restart
    if email.blank?
      flash[:alert] = I18n.t('home.request_contact.no_email')
    # if email field not blank, send email using mailer and let user know
    # message was delivered successfully
    redirect_to contact_path
    else
      ContactMailer.contact_email(email, name, mobile, message).deliver_now
      flash[:notice] = I18n.t('home.request_contact.email_sent')
      redirect_to root_path
    end
  end
end
