class ContactMailer < ApplicationMailer
    # set parameters for contact mailer
    def contact_email(email, name, mobile, message)
        @email = email
        @name = name
        @mobile = mobile
        @message = message
        mail cc: @email
    end
end
