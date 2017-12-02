# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview
    def contact_email
        ContactMailer.contact_email("rosabelle@rosabelle.net", "Rosabelle Armstead", "07777777777", @message = "Hi!")
    end
end
