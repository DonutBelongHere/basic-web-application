class ContactMailer < ApplicationMailer
    def contact_email(email, name, mobile, message)
        @email = email
        @name = name
        @mobile = mobile
        @message = message
        mail cc: @email
    end
end
