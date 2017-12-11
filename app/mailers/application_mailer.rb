class ApplicationMailer < ActionMailer::Base
  # default email for the mailer
  default to: "info@musiclibrary.com", from: "info@musiclibrary.com"
  layout 'mailer'
end
